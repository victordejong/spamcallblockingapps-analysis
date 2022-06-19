package com.facebook;

import android.util.Log;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10336x;
import com.google.android.material.timepicker.TimeModel;
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
/* renamed from: com.facebook.j */
/* loaded from: classes3-dex2jar.jar:com/facebook/j.class */
public class C10351j {

    /* renamed from: d */
    private static final String f33958d = "j";

    /* renamed from: a */
    public final JSONObject f33959a;

    /* renamed from: b */
    public final FacebookRequestError f33960b;

    /* renamed from: c */
    public final String f33961c;

    /* renamed from: e */
    private final HttpURLConnection f33962e;

    /* renamed from: f */
    private final JSONArray f33963f;

    /* renamed from: g */
    private final GraphRequest f33964g;

    public C10351j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    public C10351j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    public C10351j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    C10351j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.f33964g = graphRequest;
        this.f33962e = httpURLConnection;
        this.f33961c = str;
        this.f33959a = jSONObject;
        this.f33963f = jSONArray;
        this.f33960b = facebookRequestError;
    }

    /* renamed from: a */
    public static List<C10351j> m22935a(HttpURLConnection httpURLConnection, C10193i c10193i) {
        Closeable closeable = null;
        closeable = null;
        closeable = null;
        try {
            if (!C10181g.m23301b()) {
                Log.e(f33958d, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
                throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
            }
            InputStream errorStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            InputStream inputStream = errorStream;
            String m23236a = C10213ae.m23236a(errorStream);
            InputStream inputStream2 = errorStream;
            C10336x.m22992a(EnumC10396m.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(m23236a.length()), m23236a);
            InputStream inputStream3 = errorStream;
            InputStream inputStream4 = errorStream;
            JSONTokener jSONTokener = new JSONTokener(m23236a);
            InputStream inputStream5 = errorStream;
            List<C10351j> m22934a = m22934a(httpURLConnection, c10193i, jSONTokener.nextValue());
            InputStream inputStream6 = errorStream;
            C10336x.m22992a(EnumC10396m.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", c10193i.f33630d, Integer.valueOf(m23236a.length()), m22934a);
            closeable = errorStream;
            return m22934a;
        } catch (Exception e) {
            C10336x.m22992a(EnumC10396m.REQUESTS, "Response", "Response <Error>: %s", e);
            return m22933a(c10193i, httpURLConnection, new FacebookException(e));
        } catch (FacebookException e2) {
            C10336x.m22992a(EnumC10396m.REQUESTS, "Response", "Response <Error>: %s", e2);
            return m22933a(c10193i, httpURLConnection, e2);
        } finally {
            C10213ae.m23238a(closeable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.facebook.C10351j> m22934a(java.net.HttpURLConnection r10, java.util.List<com.facebook.GraphRequest> r11, java.lang.Object r12) throws com.facebook.FacebookException, org.json.JSONException {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.C10351j.m22934a(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
    }

    /* renamed from: a */
    public static List<C10351j> m22933a(List<GraphRequest> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new C10351j(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final FacebookRequestError m22936a() {
        return this.f33960b;
    }

    /* renamed from: b */
    public final JSONObject m22932b() {
        return this.f33959a;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f33962e;
            str = String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(httpURLConnection != null ? httpURLConnection.getResponseCode() : 200));
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f33959a + ", error: " + this.f33960b + "}";
    }
}
