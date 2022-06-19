package com.zhy.http.okhttp.cookie.store;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/cookie/store/PersistentCookieStore.class */
public class PersistentCookieStore implements CookieStore {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private static final String LOG_TAG = "PersistentCookieStore";
    private final SharedPreferences cookiePrefs;
    private final HashMap<String, ConcurrentHashMap<String, Cookie>> cookies = new HashMap<>();

    public PersistentCookieStore(Context context) {
        String[] split;
        Cookie decodeCookie;
        SharedPreferences sharedPreferences = context.getSharedPreferences(COOKIE_PREFS, 0);
        this.cookiePrefs = sharedPreferences;
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            if (((String) entry.getValue()) != null && !((String) entry.getValue()).startsWith(COOKIE_NAME_PREFIX)) {
                for (String str : TextUtils.split((String) entry.getValue(), ",")) {
                    String string = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                    if (string != null && (decodeCookie = decodeCookie(string)) != null) {
                        if (!this.cookies.containsKey(entry.getKey())) {
                            this.cookies.put(entry.getKey(), new ConcurrentHashMap<>());
                        }
                        this.cookies.get(entry.getKey()).put(str, decodeCookie);
                    }
                }
            }
        }
    }

    private static boolean isCookieExpired(Cookie cookie) {
        return cookie.expiresAt() < System.currentTimeMillis();
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public void add(HttpUrl httpUrl, List<Cookie> list) {
        for (Cookie cookie : list) {
            add(httpUrl, cookie);
        }
    }

    protected void add(HttpUrl httpUrl, Cookie cookie) {
        String cookieToken = getCookieToken(cookie);
        if (!cookie.persistent()) {
            if (!this.cookies.containsKey(httpUrl.host())) {
                this.cookies.put(httpUrl.host(), new ConcurrentHashMap<>());
            }
            this.cookies.get(httpUrl.host()).put(cookieToken, cookie);
        } else if (!this.cookies.containsKey(httpUrl.host())) {
            return;
        } else {
            this.cookies.get(httpUrl.host()).remove(cookieToken);
        }
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.putString(httpUrl.host(), TextUtils.join(",", this.cookies.get(httpUrl.host()).keySet()));
        edit.putString(COOKIE_NAME_PREFIX + cookieToken, encodeCookie(new SerializableHttpCookie(cookie)));
        edit.apply();
    }

    protected String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString().toUpperCase(Locale.US);
    }

    protected Cookie decodeCookie(String str) {
        Cookie cookie;
        try {
            cookie = ((SerializableHttpCookie) new ObjectInputStream(new ByteArrayInputStream(hexStringToByteArray(str))).readObject()).getCookie();
        } catch (IOException e) {
            Log.d(LOG_TAG, "IOException in decodeCookie", e);
            cookie = null;
            return cookie;
        } catch (ClassNotFoundException e2) {
            Log.d(LOG_TAG, "ClassNotFoundException in decodeCookie", e2);
            cookie = null;
            return cookie;
        }
        return cookie;
    }

    protected String encodeCookie(SerializableHttpCookie serializableHttpCookie) {
        if (serializableHttpCookie == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(serializableHttpCookie);
            return byteArrayToHexString(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            Log.d(LOG_TAG, "IOException in encodeCookie", e);
            return null;
        }
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public List<Cookie> get(HttpUrl httpUrl) {
        ArrayList arrayList = new ArrayList();
        if (this.cookies.containsKey(httpUrl.host())) {
            for (Cookie cookie : this.cookies.get(httpUrl.host()).values()) {
                if (isCookieExpired(cookie)) {
                    remove(httpUrl, cookie);
                } else {
                    arrayList.add(cookie);
                }
            }
        }
        return arrayList;
    }

    protected String getCookieToken(Cookie cookie) {
        return cookie.name() + cookie.domain();
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public List<Cookie> getCookies() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.cookies.keySet()) {
            arrayList.addAll(this.cookies.get(str).values());
        }
        return arrayList;
    }

    protected byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public boolean remove(HttpUrl httpUrl, Cookie cookie) {
        String cookieToken = getCookieToken(cookie);
        if (!this.cookies.containsKey(httpUrl.host()) || !this.cookies.get(httpUrl.host()).containsKey(cookieToken)) {
            return false;
        }
        this.cookies.get(httpUrl.host()).remove(cookieToken);
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        SharedPreferences sharedPreferences = this.cookiePrefs;
        if (sharedPreferences.contains(COOKIE_NAME_PREFIX + cookieToken)) {
            edit.remove(COOKIE_NAME_PREFIX + cookieToken);
        }
        edit.putString(httpUrl.host(), TextUtils.join(",", this.cookies.get(httpUrl.host()).keySet()));
        edit.apply();
        return true;
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public boolean removeAll() {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.clear();
        edit.apply();
        this.cookies.clear();
        return true;
    }
}
