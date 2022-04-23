package com.facebook;

import android.util.Log;
import com.facebook.internal.ae;
import com.facebook.internal.x;
import com.google.android.material.timepicker.TimeModel;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes3-dex2jar.jar:com/facebook/j.class */
public class j {

    /* renamed from: d  reason: collision with root package name */
    private static final String f20035d = "j";

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f20036a;

    /* renamed from: b  reason: collision with root package name */
    public final FacebookRequestError f20037b;

    /* renamed from: c  reason: collision with root package name */
    public final String f20038c;
    private final HttpURLConnection e;
    private final JSONArray f;
    private final GraphRequest g;

    public j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    public j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    public j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    j(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.g = graphRequest;
        this.e = httpURLConnection;
        this.f20038c = str;
        this.f20036a = jSONObject;
        this.f = jSONArray;
        this.f20037b = facebookRequestError;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<j> a(HttpURLConnection httpURLConnection, i iVar) {
        Closeable closeable = null;
        closeable = null;
        closeable = null;
        try {
            if (g.b()) {
                String a2 = ae.a(httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream());
                x.a(m.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(a2.length()), a2);
                List<j> a3 = a(httpURLConnection, iVar, new JSONTokener(a2).nextValue());
                x.a(m.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", iVar.f19794d, Integer.valueOf(a2.length()), a3);
                return a3;
            }
            Log.e(f20035d, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
            throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
        } catch (Exception e) {
            x.a(m.REQUESTS, "Response", "Response <Error>: %s", e);
            return a(iVar, httpURLConnection, new FacebookException(e));
        } catch (FacebookException e2) {
            x.a(m.REQUESTS, "Response", "Response <Error>: %s", e2);
            return a(iVar, httpURLConnection, e2);
        } finally {
            ae.a(closeable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.facebook.j> a(java.net.HttpURLConnection r10, java.util.List<com.facebook.GraphRequest> r11, java.lang.Object r12) throws com.facebook.FacebookException, org.json.JSONException {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.j.a(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<j> a(List<GraphRequest> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new j(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
        }
        return arrayList;
    }

    public final FacebookRequestError a() {
        return this.f20037b;
    }

    public final JSONObject b() {
        return this.f20036a;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.e;
            str = String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(httpURLConnection != null ? httpURLConnection.getResponseCode() : 200));
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f20036a + ", error: " + this.f20037b + "}";
    }
}
