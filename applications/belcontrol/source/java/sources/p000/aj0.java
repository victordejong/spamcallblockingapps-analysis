package p000;

import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
/* renamed from: aj0 */
/* loaded from: classes-dex2jar.jar:aj0.class */
public class aj0 {

    /* renamed from: d */
    public static final String f335d = "aj0";

    /* renamed from: a */
    public final HttpURLConnection f336a;

    /* renamed from: b */
    public final JSONObject f337b;

    /* renamed from: c */
    public final FacebookRequestError f338c;

    public aj0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    public aj0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    public aj0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    public aj0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.f336a = httpURLConnection;
        this.f337b = jSONObject;
        this.f338c = facebookRequestError;
    }

    /* renamed from: a */
    public static List<aj0> m7102a(List<GraphRequest> list, HttpURLConnection httpURLConnection, ri0 ri0Var) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new aj0(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception) ri0Var)));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static aj0 m7101b(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) {
        Object obj3 = obj;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            FacebookRequestError m5212a = FacebookRequestError.m5212a(jSONObject, obj2, httpURLConnection);
            if (m5212a != null) {
                Log.e(f335d, m5212a.toString());
                if (m5212a.m5210c() == 190 && fn0.O(graphRequest.m5152q())) {
                    if (m5212a.m5204i() != 493) {
                        AccessToken.m5237u(null);
                    } else if (!AccessToken.m5251g().m5238t()) {
                        AccessToken.m5253e();
                    }
                }
                return new aj0(graphRequest, httpURLConnection, m5212a);
            }
            Object D = fn0.D(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (D instanceof JSONObject) {
                return new aj0(graphRequest, httpURLConnection, D.toString(), (JSONObject) D);
            }
            if (D instanceof JSONArray) {
                return new aj0(graphRequest, httpURLConnection, D.toString(), (JSONArray) D);
            }
            obj3 = JSONObject.NULL;
        }
        if (obj3 == JSONObject.NULL) {
            return new aj0(graphRequest, httpURLConnection, obj3.toString(), (JSONObject) null);
        }
        throw new ri0("Got unexpected object type in response, class: " + obj3.getClass().getSimpleName());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00b1  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<p000.aj0> m7100c(java.net.HttpURLConnection r9, java.util.List<com.facebook.GraphRequest> r10, java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.aj0.m7100c(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
    }

    /* renamed from: d */
    public static List<aj0> m7099d(InputStream inputStream, HttpURLConnection httpURLConnection, zi0 zi0Var) {
        String g0 = fn0.g0(inputStream);
        xm0.h(dj0.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", new Object[]{Integer.valueOf(g0.length()), g0});
        return m7098e(g0, httpURLConnection, zi0Var);
    }

    /* renamed from: e */
    public static List<aj0> m7098e(String str, HttpURLConnection httpURLConnection, zi0 zi0Var) {
        List<aj0> m7100c = m7100c(httpURLConnection, zi0Var, new JSONTokener(str).nextValue());
        xm0.h(dj0.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", new Object[]{zi0Var.l(), Integer.valueOf(str.length()), m7100c});
        return m7100c;
    }

    /* renamed from: f */
    public static List<aj0> m7097f(HttpURLConnection httpURLConnection, zi0 zi0Var) {
        Closeable closeable = null;
        closeable = null;
        closeable = null;
        try {
            if (!ui0.w()) {
                Log.e(f335d, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
                throw new ri0("GraphRequest can't be used when Facebook SDK isn't fully initialized");
            }
            InputStream errorStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            InputStream inputStream = errorStream;
            closeable = errorStream;
            return m7099d(errorStream, httpURLConnection, zi0Var);
        } catch (Exception e) {
            xm0.h(dj0.REQUESTS, "Response", "Response <Error>: %s", new Object[]{e});
            return m7102a(zi0Var, httpURLConnection, new ri0(e));
        } catch (ri0 e2) {
            xm0.h(dj0.REQUESTS, "Response", "Response <Error>: %s", new Object[]{e2});
            return m7102a(zi0Var, httpURLConnection, e2);
        } finally {
            fn0.h(closeable);
        }
    }

    /* renamed from: g */
    public final FacebookRequestError m7096g() {
        return this.f338c;
    }

    /* renamed from: h */
    public final JSONObject m7095h() {
        return this.f337b;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f336a;
            str = String.format(locale, "%d", Integer.valueOf(httpURLConnection != null ? httpURLConnection.getResponseCode() : 200));
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f337b + ", error: " + this.f338c + "}";
    }
}
