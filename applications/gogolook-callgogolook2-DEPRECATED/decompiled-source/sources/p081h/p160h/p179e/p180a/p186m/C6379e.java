package p081h.p160h.p179e.p180a.p186m;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.m.e */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/e.class */
public class C6379e {

    /* renamed from: a */
    public static OkHttpClient f15869a;

    /* renamed from: b */
    public static OkHttpClient f15870b;

    /* renamed from: a */
    public static Call m22903a(C6341b bVar, Request request) {
        Call call;
        if (bVar.f15768n) {
            if (f15870b == null) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                builder.connectTimeout(30000L, TimeUnit.MILLISECONDS);
                builder.readTimeout(30000L, TimeUnit.MILLISECONDS);
                builder.writeTimeout(30000L, TimeUnit.MILLISECONDS);
                CertificatePinner.Builder builder2 = new CertificatePinner.Builder();
                builder2.add("*.whoscall.com", "sha256/tVhGjgsR/hsZTXDUa1xTTMvhmloBxzvJJIOK3KpozHk=");
                builder2.add("*.whoscall.com", "sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=");
                builder2.add("*.whoscall.com", "sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=");
                builder.certificatePinner(builder2.build());
                f15870b = builder.build();
            }
            call = f15870b.newCall(request);
        } else {
            if (f15869a == null) {
                OkHttpClient.Builder builder3 = new OkHttpClient.Builder();
                builder3.connectTimeout(30000L, TimeUnit.MILLISECONDS);
                builder3.readTimeout(30000L, TimeUnit.MILLISECONDS);
                builder3.writeTimeout(30000L, TimeUnit.MILLISECONDS);
                f15869a = builder3.build();
            }
            call = f15869a.newCall(request);
        }
        return call;
    }

    /* renamed from: a */
    public static Headers m22902a(String str, String str2) {
        Headers.Builder builder = new Headers.Builder();
        builder.add("client-time", String.valueOf(System.currentTimeMillis()));
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    builder.add(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                C6438i.m22583a(e);
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            builder.add("If-None-Match", str2);
        }
        return builder.build();
    }

    /* renamed from: a */
    public static Request m22904a(C6341b bVar) {
        Request.Builder builder = new Request.Builder();
        builder.url(bVar.f15755a);
        builder.headers(m22902a(bVar.f15758d, bVar.f15762h));
        if (bVar.f15756b.equals("POST")) {
            if (TextUtils.isEmpty(bVar.f15757c)) {
                builder.post(null);
            } else if (bVar.f15766l) {
                builder.post(RequestBody.create(MediaType.parse("application/octet-stream"), C6432e.m22593c(bVar.m23205b())));
            } else if (bVar.f15767m) {
                builder.post(RequestBody.create(MediaType.parse("application/octet-stream"), C6432e.m22593c(bVar.m23208a())));
            } else {
                builder.post(RequestBody.create(MediaType.parse("application/json"), bVar.f15757c));
            }
        } else if (bVar.f15756b.equals("GET")) {
            builder.get();
        } else if (bVar.f15756b.equals("DELETE")) {
            builder.delete();
        }
        return builder.build();
    }
}
