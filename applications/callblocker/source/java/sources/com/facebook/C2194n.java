package com.facebook;

import android.util.Log;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* renamed from: com.facebook.n */
/* loaded from: classes-dex2jar.jar:com/facebook/n.class */
public class C2194n {

    /* renamed from: a */
    private static final String f6412a = C2194n.class.getSimpleName();

    /* renamed from: b */
    private final HttpURLConnection f6413b;

    /* renamed from: c */
    private final JSONObject f6414c;

    /* renamed from: d */
    private final JSONArray f6415d;

    /* renamed from: e */
    private final C1990i f6416e;

    /* renamed from: f */
    private final String f6417f;

    /* renamed from: g */
    private final C2102k f6418g;

    C2194n(C2102k c2102k, HttpURLConnection httpURLConnection, C1990i c1990i) {
        this(c2102k, httpURLConnection, null, null, null, c1990i);
    }

    C2194n(C2102k c2102k, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(c2102k, httpURLConnection, str, null, jSONArray, null);
    }

    C2194n(C2102k c2102k, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(c2102k, httpURLConnection, str, jSONObject, null, null);
    }

    C2194n(C2102k c2102k, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, C1990i c1990i) {
        this.f6418g = c2102k;
        this.f6413b = httpURLConnection;
        this.f6417f = str;
        this.f6414c = jSONObject;
        this.f6415d = jSONArray;
        this.f6416e = c1990i;
    }

    /* renamed from: a */
    private static C2194n m14986a(C2102k c2102k, HttpURLConnection httpURLConnection, Object obj, Object obj2) {
        C2194n c2194n;
        Object obj3 = obj;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            C1990i m15708a = C1990i.m15708a(jSONObject, obj2, httpURLConnection);
            if (m15708a != null) {
                Log.e(f6412a, m15708a.toString());
                if (m15708a.m15707b() == 190 && C2079x.m15480a(c2102k.m15299f())) {
                    if (m15708a.m15706c() != 493) {
                        C1803a.m16256a((C1803a) null);
                    } else if (!C1803a.m16259a().m16239o()) {
                        C1803a.m16251c();
                    }
                }
                c2194n = new C2194n(c2102k, httpURLConnection, m15708a);
            } else {
                Object m15456a = C2079x.m15456a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                if (m15456a instanceof JSONObject) {
                    c2194n = new C2194n(c2102k, httpURLConnection, m15456a.toString(), (JSONObject) m15456a);
                } else if (m15456a instanceof JSONArray) {
                    c2194n = new C2194n(c2102k, httpURLConnection, m15456a.toString(), (JSONArray) m15456a);
                } else {
                    obj3 = JSONObject.NULL;
                }
            }
            return c2194n;
        }
        if (obj3 == JSONObject.NULL) {
            c2194n = new C2194n(c2102k, httpURLConnection, obj3.toString(), (JSONObject) null);
            return c2194n;
        }
        throw new FacebookException("Got unexpected object type in response, class: " + obj3.getClass().getSimpleName());
    }

    /* renamed from: a */
    static List<C2194n> m14985a(InputStream inputStream, HttpURLConnection httpURLConnection, C2191m c2191m) {
        String m15478a = C2079x.m15478a(inputStream);
        C2063r.m15549a(EnumC2197q.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(m15478a.length()), m15478a);
        return m14984a(m15478a, httpURLConnection, c2191m);
    }

    /* renamed from: a */
    static List<C2194n> m14984a(String str, HttpURLConnection httpURLConnection, C2191m c2191m) {
        List<C2194n> m14982a = m14982a(httpURLConnection, c2191m, new JSONTokener(str).nextValue());
        C2063r.m15549a(EnumC2197q.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", c2191m.m15000b(), Integer.valueOf(str.length()), m14982a);
        return m14982a;
    }

    /* renamed from: a */
    public static List<C2194n> m14983a(HttpURLConnection httpURLConnection, C2191m c2191m) {
        List<C2194n> m14981a;
        Closeable closeable = null;
        closeable = null;
        closeable = null;
        try {
        } catch (FacebookException e) {
            C2063r.m15549a(EnumC2197q.REQUESTS, "Response", "Response <Error>: %s", e);
            m14981a = m14981a(c2191m, httpURLConnection, e);
        } catch (Exception e2) {
            C2063r.m15549a(EnumC2197q.REQUESTS, "Response", "Response <Error>: %s", e2);
            m14981a = m14981a(c2191m, httpURLConnection, new FacebookException(e2));
        } finally {
            C2079x.m15479a(closeable);
        }
        if (!C2095j.m15369b()) {
            Log.e(f6412a, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
            throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
        }
        InputStream errorStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
        InputStream inputStream = errorStream;
        m14981a = m14985a(errorStream, httpURLConnection, c2191m);
        closeable = errorStream;
        return m14981a;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x010e -> B:28:0x0106). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x012f -> B:28:0x0106). Please submit an issue!!! */
    /* renamed from: a */
    private static List<C2194n> m14982a(HttpURLConnection httpURLConnection, List<C2102k> list, Object obj) {
        JSONArray jSONArray;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            C2102k c2102k = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("body", obj);
                jSONObject.put("code", httpURLConnection != null ? httpURLConnection.getResponseCode() : 200);
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(jSONObject);
                jSONArray = jSONArray2;
            } catch (IOException e) {
                arrayList.add(new C2194n(c2102k, httpURLConnection, new C1990i(httpURLConnection, e)));
            } catch (JSONException e2) {
                arrayList.add(new C2194n(c2102k, httpURLConnection, new C1990i(httpURLConnection, e2)));
                jSONArray = obj;
            }
            if ((jSONArray instanceof JSONArray) || ((JSONArray) jSONArray).length() != size) {
                throw new FacebookException("Unexpected number of results");
            }
            JSONArray jSONArray3 = (JSONArray) jSONArray;
            for (int i = 0; i < jSONArray3.length(); i++) {
                C2102k c2102k2 = list.get(i);
                try {
                    arrayList.add(m14986a(c2102k2, httpURLConnection, jSONArray3.get(i), obj));
                } catch (FacebookException e3) {
                    arrayList.add(new C2194n(c2102k2, httpURLConnection, new C1990i(httpURLConnection, e3)));
                } catch (JSONException e4) {
                    arrayList.add(new C2194n(c2102k2, httpURLConnection, new C1990i(httpURLConnection, e4)));
                }
            }
            return arrayList;
        }
        jSONArray = obj;
        if (jSONArray instanceof JSONArray) {
        }
        throw new FacebookException("Unexpected number of results");
    }

    /* renamed from: a */
    public static List<C2194n> m14981a(List<C2102k> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new C2194n(list.get(i), httpURLConnection, new C1990i(httpURLConnection, facebookException)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C1990i m14987a() {
        return this.f6416e;
    }

    /* renamed from: b */
    public final JSONObject m14980b() {
        return this.f6414c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0069 -> B:7:0x0026). Please submit an issue!!! */
    public String toString() {
        String str;
        try {
            str = String.format(Locale.US, "%d", Integer.valueOf(this.f6413b != null ? this.f6413b.getResponseCode() : 200));
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f6414c + ", error: " + this.f6416e + "}";
    }
}
