package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.e.a;
import com.google.firebase.perf.p084g.C2431k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    private FirebasePerfOkHttpClient() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m3650a(Response response, a aVar, long j, long j2) {
        Request request = response.request();
        if (request != null) {
            aVar.x(request.url().url().toString());
            aVar.l(request.method());
            if (request.body() != null) {
                long contentLength = request.body().contentLength();
                if (contentLength != -1) {
                    aVar.o(contentLength);
                }
            }
            ResponseBody body = response.body();
            if (body != null) {
                long contentLength2 = body.contentLength();
                if (contentLength2 != -1) {
                    aVar.s(contentLength2);
                }
                MediaType contentType = body.contentType();
                if (contentType != null) {
                    aVar.q(contentType.toString());
                }
            }
            aVar.m(response.code());
            aVar.p(j);
            aVar.v(j2);
            aVar.b();
        }
    }

    @Keep
    public static void enqueue(Call call, Callback callback) {
        Timer timer = new Timer();
        call.enqueue(new C2438g(callback, C2431k.m3680e(), timer, timer.m3585d()));
    }

    @Keep
    public static Response execute(Call call) {
        a c = a.c(C2431k.m3680e());
        Timer timer = new Timer();
        long d = timer.m3585d();
        try {
            Response execute = call.execute();
            m3650a(execute, c, d, timer.m3587b());
            return execute;
        } catch (IOException e) {
            Request request = call.request();
            if (request != null) {
                HttpUrl url = request.url();
                if (url != null) {
                    c.x(url.url().toString());
                }
                if (request.method() != null) {
                    c.l(request.method());
                }
            }
            c.p(d);
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }
}
