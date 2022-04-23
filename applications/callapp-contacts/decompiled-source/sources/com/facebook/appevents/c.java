package com.facebook.appevents;

import android.os.Build;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.appevents.c.a;
import com.facebook.internal.ae;
import com.facebook.internal.x;
import com.facebook.m;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c.class */
public final class c implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final HashSet<String> f19500d = new HashSet<>();

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f19501a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f19502b;

    /* renamed from: c  reason: collision with root package name */
    public final String f19503c;
    private final boolean e;
    private final String f;

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c$a.class */
    static class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final String f19504a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f19505b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f19506c;

        private a(String str, boolean z, boolean z2) {
            this.f19504a = str;
            this.f19505b = z;
            this.f19506c = z2;
        }

        private Object readResolve() throws JSONException {
            return new c(this.f19504a, this.f19505b, this.f19506c, null);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c$b.class */
    static final class b implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final String f19512a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f19513b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f19514c;

        /* renamed from: d  reason: collision with root package name */
        private final String f19515d;

        private b(String str, boolean z, boolean z2, String str2) {
            this.f19512a = str;
            this.f19513b = z;
            this.f19514c = z2;
            this.f19515d = str2;
        }

        private Object readResolve() throws JSONException {
            return new c(this.f19512a, this.f19513b, this.f19514c, this.f19515d);
        }
    }

    public c(String str, String str2, Double d2, Bundle bundle, boolean z, boolean z2, UUID uuid) throws JSONException, FacebookException {
        this.f19502b = z;
        this.e = z2;
        this.f19503c = str2;
        this.f19501a = a(str, str2, d2, bundle, uuid);
        this.f = b();
    }

    private c(String str, boolean z, boolean z2, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f19501a = jSONObject;
        this.f19502b = z;
        this.f19503c = jSONObject.optString("_eventName");
        this.f = str2;
        this.e = z2;
    }

    private Map<String, String> a(Bundle bundle) throws FacebookException {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            a(str);
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof Number)) {
                hashMap.put(str, obj.toString());
            } else {
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str));
            }
        }
        com.facebook.appevents.e.a.a(hashMap);
        com.facebook.appevents.i.a.a(hashMap, this.f19503c);
        a.a(hashMap, this.f19503c);
        return hashMap;
    }

    private JSONObject a(String str, String str2, Double d2, Bundle bundle, UUID uuid) throws JSONException {
        a(str2);
        JSONObject jSONObject = new JSONObject();
        String a2 = com.facebook.appevents.i.a.a(str2);
        jSONObject.put("_eventName", a2);
        jSONObject.put("_eventName_md5", b(a2));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> a3 = a(bundle);
            for (String str3 : a3.keySet()) {
                jSONObject.put(str3, a3.get(str3));
            }
        }
        if (d2 != null) {
            jSONObject.put("_valueToSum", d2.doubleValue());
        }
        if (this.e) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.f19502b) {
            jSONObject.put("_implicitlyLogged", "1");
        } else {
            x.a(m.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    private static void a(String str) throws FacebookException {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            String str2 = str;
            if (str == null) {
                str2 = "<None Provided>";
            }
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str2, 40));
        }
        HashSet<String> hashSet = f19500d;
        synchronized (hashSet) {
            contains = hashSet.contains(str);
        }
        if (contains) {
            return;
        }
        if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
            synchronized (hashSet) {
                hashSet.add(str);
            }
            return;
        }
        throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
    }

    private String b() {
        if (Build.VERSION.SDK_INT > 19) {
            return b(this.f19501a.toString());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.f19501a.keys();
        while (keys.hasNext()) {
            arrayList.add(keys.next());
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            sb.append(str);
            sb.append(" = ");
            sb.append(this.f19501a.optString(str));
            sb.append('\n');
        }
        return b(sb.toString());
    }

    private static String b(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            return com.facebook.appevents.f.b.a(instance.digest());
        } catch (UnsupportedEncodingException e) {
            ae.a("Failed to generate checksum: ", (Exception) e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            ae.a("Failed to generate checksum: ", (Exception) e2);
            return "0";
        }
    }

    private Object writeReplace() {
        return new b(this.f19501a.toString(), this.f19502b, this.e, this.f);
    }

    public final boolean a() {
        if (this.f == null) {
            return true;
        }
        return b().equals(this.f);
    }

    public final String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f19501a.optString("_eventName"), Boolean.valueOf(this.f19502b), this.f19501a.toString());
    }
}
