package p068d2;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p068d2.RunnableC2290h2;
/* renamed from: d2.p2 */
/* loaded from: classes-dex2jar.jar:d2/p2.class */
public class C2385p2 implements RunnableC2290h2.AbstractC2291a {

    /* renamed from: a */
    public LinkedBlockingQueue<Runnable> f8430a = new LinkedBlockingQueue<>();

    /* renamed from: b */
    public int f8431b = 4;

    /* renamed from: c */
    public int f8432c = 16;

    /* renamed from: d */
    public double f8433d = 1.0d;

    /* renamed from: e */
    public ThreadPoolExecutor f8434e = new ThreadPoolExecutor(this.f8431b, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60, TimeUnit.SECONDS, this.f8430a);

    @Override // p068d2.RunnableC2290h2.AbstractC2291a
    /* renamed from: a */
    public void mo3619a(RunnableC2290h2 runnableC2290h2, C2410t0 c2410t0, Map<String, List<String>> map) {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, ImagesContract.URL, runnableC2290h2.f8220k);
        C2227e4.m3739n(c2267f4, "success", runnableC2290h2.f8222m);
        C2227e4.m3740m(c2267f4, "status", runnableC2290h2.f8224o);
        C2227e4.m3744i(c2267f4, "body", runnableC2290h2.f8221l);
        C2227e4.m3740m(c2267f4, "size", runnableC2290h2.f8223n);
        if (map != null) {
            C2267f4 c2267f42 = new C2267f4();
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String obj = entry.getValue().toString();
                String substring = obj.substring(1, obj.length() - 1);
                if (entry.getKey() != null) {
                    C2227e4.m3744i(c2267f42, entry.getKey(), substring);
                }
            }
            C2227e4.m3745h(c2267f4, "headers", c2267f42);
        }
        c2410t0.m3587a(c2267f4).m3586b();
    }

    /* renamed from: b */
    public void m3618b(RunnableC2290h2 runnableC2290h2) {
        int corePoolSize = this.f8434e.getCorePoolSize();
        int size = this.f8430a.size();
        int i = this.f8431b;
        if (size * this.f8433d > (corePoolSize - i) + 1 && corePoolSize < this.f8432c) {
            this.f8434e.setCorePoolSize(corePoolSize + 1);
        } else if (size == 0 && corePoolSize > i) {
            this.f8434e.setCorePoolSize(i);
        }
        try {
            this.f8434e.execute(runnableC2290h2);
        } catch (RejectedExecutionException e) {
            StringBuilder m8752j = C0082b.m8752j("RejectedExecutionException: ThreadPoolExecutor unable to ");
            StringBuilder m8752j2 = C0082b.m8752j("execute download for url ");
            m8752j2.append(runnableC2290h2.f8220k);
            m8752j.append(m8752j2.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            mo3619a(runnableC2290h2, runnableC2290h2.f8212c, null);
        }
    }
}
