package p081h.p154f;

import android.util.Log;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2503y;
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
/* renamed from: h.f.s */
/* loaded from: classes-dex2jar.jar:h/f/s.class */
public class C6148s {

    /* renamed from: d */
    public static final String f15277d = "s";

    /* renamed from: a */
    public final HttpURLConnection f15278a;

    /* renamed from: b */
    public final JSONObject f15279b;

    /* renamed from: c */
    public final FacebookRequestError f15280c;

    public C6148s(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    public C6148s(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    public C6148s(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    public C6148s(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.f15278a = httpURLConnection;
        this.f15279b = jSONObject;
        this.f15280c = facebookRequestError;
    }

    /* renamed from: a */
    public static C6148s m23704a(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) throws JSONException {
        Object obj3 = obj;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            FacebookRequestError a = FacebookRequestError.m35474a(jSONObject, obj2, httpURLConnection);
            if (a != null) {
                Log.e(f15277d, a.toString());
                if (a.m35475a() == 190 && C2408g0.m34864a(graphRequest.m35427d())) {
                    if (a.m35468t() != 493) {
                        AccessToken.m35498b(null);
                    } else if (!AccessToken.m35507B().m35489x()) {
                        AccessToken.m35508A();
                    }
                }
                return new C6148s(graphRequest, httpURLConnection, a);
            }
            Object a2 = C2408g0.m34837a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (a2 instanceof JSONObject) {
                return new C6148s(graphRequest, httpURLConnection, a2.toString(), (JSONObject) a2);
            }
            if (a2 instanceof JSONArray) {
                return new C6148s(graphRequest, httpURLConnection, a2.toString(), (JSONArray) a2);
            }
            obj3 = JSONObject.NULL;
        }
        if (obj3 == JSONObject.NULL) {
            return new C6148s(graphRequest, httpURLConnection, obj3.toString(), (JSONObject) null);
        }
        throw new C6131k("Got unexpected object type in response, class: " + obj3.getClass().getSimpleName());
    }

    /* renamed from: a */
    public static List<C6148s> m23703a(InputStream inputStream, HttpURLConnection httpURLConnection, C6145r rVar) throws C6131k, JSONException, IOException {
        String a = C2408g0.m34861a(inputStream);
        C2503y.m34556a(EnumC6151v.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(a.length()), a);
        return m23702a(a, httpURLConnection, rVar);
    }

    /* renamed from: a */
    public static List<C6148s> m23702a(String str, HttpURLConnection httpURLConnection, C6145r rVar) throws C6131k, JSONException, IOException {
        List<C6148s> a = m23700a(httpURLConnection, rVar, new JSONTokener(str).nextValue());
        C2503y.m34556a(EnumC6151v.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", rVar.m23710v(), Integer.valueOf(str.length()), a);
        return a;
    }

    /* renamed from: a */
    public static List<C6148s> m23701a(HttpURLConnection httpURLConnection, C6145r rVar) {
        Closeable closeable = null;
        closeable = null;
        closeable = null;
        try {
            if (C6135n.m23731t()) {
                return m23703a(httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), httpURLConnection, rVar);
            }
            Log.e(f15277d, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
            throw new C6131k("GraphRequest can't be used when Facebook SDK isn't fully initialized");
        } catch (C6131k e) {
            C2503y.m34556a(EnumC6151v.REQUESTS, "Response", "Response <Error>: %s", e);
            return m23699a(rVar, httpURLConnection, e);
        } catch (Exception e2) {
            C2503y.m34556a(EnumC6151v.REQUESTS, "Response", "Response <Error>: %s", e2);
            return m23699a(rVar, httpURLConnection, new C6131k(e2));
        } finally {
            C2408g0.m34863a(closeable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<p081h.p154f.C6148s> m23700a(java.net.HttpURLConnection r10, java.util.List<com.facebook.GraphRequest> r11, java.lang.Object r12) throws p081h.p154f.C6131k, org.json.JSONException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p154f.C6148s.m23700a(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
    }

    /* renamed from: a */
    public static List<C6148s> m23699a(List<GraphRequest> list, HttpURLConnection httpURLConnection, C6131k kVar) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new C6148s(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, kVar)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final FacebookRequestError m23705a() {
        return this.f15280c;
    }

    /* renamed from: b */
    public final JSONObject m23698b() {
        return this.f15279b;
    }

    public String toString() {
        String str;
        try {
            str = String.format(Locale.US, "%d", Integer.valueOf(this.f15278a != null ? this.f15278a.getResponseCode() : 200));
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f15279b + ", error: " + this.f15280c + CssParser.BLOCK_END;
    }
}
