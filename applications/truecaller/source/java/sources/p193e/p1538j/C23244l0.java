package p193e.p1538j;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
@Metadata(d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� '2\u00020\u0001:\u0002'(B+\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010BA\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0012J\b\u0010!\u001a\u0004\u0018\u00010\fJ\b\u0010\"\u001a\u0004\u0018\u00010\tJ\u0010\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%J\b\u0010&\u001a\u00020\u0007H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n��R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\f¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 ¨\u0006)"}, d2 = {"Lcom/facebook/GraphResponse;", "", "request", "Lcom/facebook/GraphRequest;", "connection", "Ljava/net/HttpURLConnection;", "rawResponse", "", "graphObject", "Lorg/json/JSONObject;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V", "graphObjects", "Lorg/json/JSONArray;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V", "error", "Lcom/facebook/FacebookRequestError;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V", "graphObjectArray", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V", "getConnection", "()Ljava/net/HttpURLConnection;", "getError", "()Lcom/facebook/FacebookRequestError;", "jsonArray", "getJsonArray", "()Lorg/json/JSONArray;", "jsonObject", "getJsonObject", "()Lorg/json/JSONObject;", "getRawResponse", "()Ljava/lang/String;", "getRequest", "()Lcom/facebook/GraphRequest;", "getJSONArray", "getJSONObject", "getRequestForPagedResults", HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, "Lcom/facebook/GraphResponse$PagingDirection;", "toString", "Companion", "PagingDirection", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.l0 */
/* loaded from: classes2-dex2jar.jar:e/j/l0.class */
public final class C23244l0 {

    /* renamed from: g */
    public static final String f64330g = "e.j.l0";

    /* renamed from: a */
    public final HttpURLConnection f64331a;

    /* renamed from: b */
    public final String f64332b;

    /* renamed from: c */
    public final JSONObject f64333c;

    /* renamed from: d */
    public final JSONArray f64334d;

    /* renamed from: e */
    public final FacebookRequestError f64335e;

    /* renamed from: f */
    public final JSONObject f64336f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C23244l0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
        l.e(graphRequest, "request");
        l.e(facebookRequestError, "error");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C23244l0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
        l.e(graphRequest, "request");
        l.e(str, "rawResponse");
    }

    public C23244l0(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        l.e(graphRequest, "request");
        this.f64331a = httpURLConnection;
        this.f64332b = str;
        this.f64333c = jSONObject;
        this.f64334d = jSONArray;
        this.f64335e = facebookRequestError;
        this.f64336f = jSONObject;
    }

    /* renamed from: a */
    public static final List<C23244l0> m7330a(List<GraphRequest> list, HttpURLConnection httpURLConnection, C23222c0 c23222c0) {
        l.e(list, "requests");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (GraphRequest graphRequest : list) {
            arrayList.add(new C23244l0(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, c23222c0)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3 A[Catch: JSONException -> 0x01eb, TRY_ENTER, TRY_LEAVE, TryCatch #3 {JSONException -> 0x01eb, blocks: (B:9:0x003e, B:11:0x0046, B:41:0x0118, B:48:0x0167, B:53:0x01b3), top: B:127:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b8  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final p193e.p1538j.C23244l0 m7329b(com.facebook.GraphRequest r16, java.net.HttpURLConnection r17, java.lang.Object r18, java.lang.Object r19) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1004
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1538j.C23244l0.m7329b(com.facebook.GraphRequest, java.net.HttpURLConnection, java.lang.Object, java.lang.Object):e.j.l0");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00e2  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<p193e.p1538j.C23244l0> m7328c(java.io.InputStream r10, java.net.HttpURLConnection r11, p193e.p1538j.C23240k0 r12) throws p193e.p1538j.C23222c0, org.json.JSONException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1538j.C23244l0.m7328c(java.io.InputStream, java.net.HttpURLConnection, e.j.k0):java.util.List");
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f64331a;
            str = String.format(locale, "%d", Arrays.copyOf(new Object[]{Integer.valueOf(httpURLConnection == null ? 200 : httpURLConnection.getResponseCode())}, 1));
            l.d(str, "java.lang.String.format(locale, format, *args)");
        } catch (IOException e) {
            str = "unknown";
        }
        String str2 = "{Response:  responseCode: " + str + ", graphObject: " + this.f64333c + ", error: " + this.f64335e + "}";
        l.d(str2, "StringBuilder()\n        .append(\"{Response: \")\n        .append(\" responseCode: \")\n        .append(responseCode)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", error: \")\n        .append(error)\n        .append(\"}\")\n        .toString()");
        return str2;
    }
}
