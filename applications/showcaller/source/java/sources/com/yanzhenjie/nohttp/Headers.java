package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.tools.BasicMultiValueMap;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.HttpCookie;
import java.net.URI;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Headers.class */
public class Headers extends BasicMultiValueMap<String, String> {
    public static final String HEAD_KEY_ACCEPT = "Accept";
    public static final String HEAD_KEY_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String HEAD_KEY_ACCEPT_LANGUAGE = "Accept-Language";
    public static final String HEAD_KEY_ACCEPT_RANGE = "Accept-Range";
    public static final String HEAD_KEY_CACHE_CONTROL = "Cache-Control";
    public static final String HEAD_KEY_CONNECTION = "Connection";
    public static final String HEAD_KEY_CONTENT_DISPOSITION = "Content-Disposition";
    public static final String HEAD_KEY_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEAD_KEY_CONTENT_LENGTH = "Content-Length";
    public static final String HEAD_KEY_CONTENT_RANGE = "Content-Range";
    public static final String HEAD_KEY_CONTENT_TYPE = "Content-Type";
    public static final String HEAD_KEY_COOKIE = "Cookie";
    public static final String HEAD_KEY_DATE = "Date";
    public static final String HEAD_KEY_EXPIRES = "Expires";
    public static final String HEAD_KEY_E_TAG = "ETag";
    public static final String HEAD_KEY_IF_MODIFIED_SINCE = "If-Modified-Since";
    public static final String HEAD_KEY_IF_NONE_MATCH = "If-None-Match";
    public static final String HEAD_KEY_LAST_MODIFIED = "Last-Modified";
    public static final String HEAD_KEY_LOCATION = "Location";
    public static final String HEAD_KEY_PRAGMA = "Pragma";
    public static final String HEAD_KEY_RESPONSE_CODE = "ResponseCode";
    public static final String HEAD_KEY_SET_COOKIE = "Set-Cookie";
    public static final String HEAD_KEY_USER_AGENT = "User-Agent";
    public static final String HEAD_VALUE_ACCEPT_ALL = "application/json,application/xml,application/xhtml+xml,text/html;q=0.9,image/webp,*/*;q=0.8";
    public static final String HEAD_VALUE_ACCEPT_ENCODING_GZIP_DEFLATE = "gzip, deflate";
    public static final String HEAD_VALUE_CONNECTION_CLOSE = "close";
    public static final String HEAD_VALUE_CONNECTION_KEEP_ALIVE = "keep-alive";
    public static final String HEAD_VALUE_CONTENT_TYPE_FORM_DATA = "multipart/form-data";
    public static final String HEAD_VALUE_CONTENT_TYPE_JSON = "application/json";
    public static final String HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM = "application/octet-stream";
    public static final String HEAD_VALUE_CONTENT_TYPE_URLENCODED = "application/x-www-form-urlencoded";
    public static final String HEAD_VALUE_CONTENT_TYPE_XML = "application/xml";

    public Headers() {
        super(new TreeMap<String, List<String>>(new Comparator<String>() { // from class: com.yanzhenjie.nohttp.Headers.1
            public int compare(String str, String str2) {
                return str.compareTo(str2);
            }
        }) { // from class: com.yanzhenjie.nohttp.Headers.2
            @Override // java.util.TreeMap, java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Headers.formatKey(obj.toString());
                }
                return super.containsKey(str);
            }

            @Override // java.util.TreeMap, java.util.AbstractMap, java.util.Map
            public List<String> get(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Headers.formatKey(obj.toString());
                }
                return (List) super.get(str);
            }

            public List<String> put(String str, List<String> list) {
                return (List) super.put((C94232) Headers.formatKey(str), (String) list);
            }

            @Override // java.util.TreeMap, java.util.AbstractMap, java.util.Map
            public List<String> remove(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Headers.formatKey(obj.toString());
                }
                return (List) super.remove(str);
            }
        });
    }

    public static String formatKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] split = str.toLowerCase(Locale.ENGLISH).split("-");
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            String substring = str2.substring(0, 1);
            String substring2 = str2.substring(1, str2.length());
            sb.append(substring.toUpperCase(Locale.ENGLISH));
            sb.append(substring2);
            sb.append("-");
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.lastIndexOf("-"));
        }
        return sb.toString();
    }

    private long getDateField(String str) {
        String firstValue = getFirstValue(str);
        if (!TextUtils.isEmpty(firstValue)) {
            try {
                return HeaderUtils.parseGMTToMillis(firstValue);
            } catch (ParseException e) {
                return 0L;
            }
        }
        return 0L;
    }

    public void addCookie(URI uri, CookieHandler cookieHandler) {
        try {
            for (Map.Entry<String, List<String>> entry : cookieHandler.get(uri, new HashMap()).entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (HEAD_KEY_COOKIE.equalsIgnoreCase(key)) {
                    add((Headers) key, TextUtils.join("; ", value));
                }
            }
        } catch (IOException e) {
            Logger.m566e((Throwable) e);
        }
    }

    public String getCacheControl() {
        List<String> values = getValues(HEAD_KEY_CACHE_CONTROL);
        List<String> list = values;
        if (values == null) {
            list = getValues(HEAD_KEY_PRAGMA);
        }
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        return TextUtils.join(",", arrayList);
    }

    public String getContentDisposition() {
        return getFirstValue(HEAD_KEY_CONTENT_DISPOSITION);
    }

    public String getContentEncoding() {
        return getFirstValue(HEAD_KEY_CONTENT_ENCODING);
    }

    public int getContentLength() {
        try {
            return Integer.parseInt(getFirstValue(HEAD_KEY_CONTENT_LENGTH));
        } catch (Throwable th) {
            return 0;
        }
    }

    public String getContentRange() {
        String firstValue = getFirstValue(HEAD_KEY_CONTENT_RANGE);
        String str = firstValue;
        if (firstValue == null) {
            str = getFirstValue(HEAD_KEY_ACCEPT_RANGE);
        }
        return str;
    }

    public String getContentType() {
        return getFirstValue(HEAD_KEY_CONTENT_TYPE);
    }

    public List<HttpCookie> getCookies() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            if (str.equalsIgnoreCase(HEAD_KEY_SET_COOKIE)) {
                for (String str2 : getValues(str)) {
                    for (HttpCookie httpCookie : HttpCookie.parse(str2)) {
                        arrayList.add(httpCookie);
                    }
                }
            }
        }
        return arrayList;
    }

    public long getDate() {
        return getDateField(HEAD_KEY_DATE);
    }

    public String getETag() {
        return getFirstValue(HEAD_KEY_E_TAG);
    }

    public long getExpiration() {
        return getDateField(HEAD_KEY_EXPIRES);
    }

    public long getLastModified() {
        return getDateField(HEAD_KEY_LAST_MODIFIED);
    }

    public String getLocation() {
        return getFirstValue(HEAD_KEY_LOCATION);
    }

    public int getResponseCode() {
        try {
            return Integer.parseInt(getFirstValue(HEAD_KEY_RESPONSE_CODE));
        } catch (Exception e) {
            return 0;
        }
    }

    public void setAll(Headers headers) {
        for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
            set((Headers) entry.getKey(), (List) entry.getValue());
        }
    }

    public void setJSONString(String str) {
        clear();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = new JSONArray(jSONObject.optString(next));
            for (int i = 0; i < jSONArray.length(); i++) {
                add((Headers) next, jSONArray.optString(i));
            }
        }
    }

    public String toJSONString() {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, List<String>> entry : entrySet()) {
            String key = entry.getKey();
            JSONArray jSONArray = new JSONArray((Collection) entry.getValue());
            String str = key;
            try {
                if (TextUtils.isEmpty(key)) {
                    str = "";
                }
                jSONObject.put(str, jSONArray);
            } catch (JSONException e) {
                Logger.m557w(e);
            }
        }
        return jSONObject.toString();
    }

    public Map<String, String> toRequestHeaders() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, List<String>> entry : entrySet()) {
            linkedHashMap.put(entry.getKey(), TextUtils.join("; ", entry.getValue()));
        }
        return linkedHashMap;
    }

    public Map<String, List<String>> toResponseHeaders() {
        return getSource();
    }
}
