package com.taiwanmobile.p055pt.adp.view.p056a;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import p081h.p447o.p448a.p449a.C10831c;
import p655o.C15300s;
/* renamed from: com.taiwanmobile.pt.adp.view.a.f */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/f.class */
public class C4143f {

    /* renamed from: a */
    public static final String f9908a = "f";

    /* renamed from: b */
    public static OkHttpClient f9909b;

    /* renamed from: com.taiwanmobile.pt.adp.view.a.f$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/f$a.class */
    public static class C4145a implements Interceptor {
        public C4145a() {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            Request.Builder newBuilder = chain.request().newBuilder();
            newBuilder.addHeader("Connection", MraidParser.MRAID_COMMAND_CLOSE);
            return chain.proceed(newBuilder.build());
        }
    }

    /* renamed from: a */
    public static String m29551a() {
        return String.format("https://%s/", "agent.tamedia.com.tw");
    }

    /* renamed from: b */
    public static String m29550b() {
        return "https://adc.tamedia.com.tw/rmadp/tp/[TAMEDIA_ADUNITID]MappingAPP.json";
    }

    /* renamed from: c */
    public static final AbstractC4146g m29549c() {
        Object a = C4117a.m29671b().m29673a("_retroRequest");
        if (a != null) {
            C10831c.m10518c(f9908a, "there had an exist request!!");
            return (AbstractC4146g) a;
        }
        C10831c.m10518c(f9908a, "there is no queue!!");
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(m29551a());
        bVar.m72a(m29548d());
        AbstractC4146g gVar = (AbstractC4146g) bVar.m77a().m87a(AbstractC4146g.class);
        C4117a.m29671b().m29672a("_retroRequest", gVar);
        return gVar;
    }

    /* renamed from: d */
    public static OkHttpClient m29548d() {
        if (f9909b == null) {
            OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
            newBuilder.readTimeout(4000L, TimeUnit.MILLISECONDS);
            newBuilder.connectTimeout(4000L, TimeUnit.MILLISECONDS);
            newBuilder.cache(null);
            newBuilder.addInterceptor(new C4145a());
            f9909b = newBuilder.build();
        }
        return f9909b;
    }
}
