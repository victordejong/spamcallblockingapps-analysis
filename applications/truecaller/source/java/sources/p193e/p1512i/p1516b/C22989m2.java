package p193e.p1512i.p1516b;

import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import java.lang.ref.WeakReference;
import p193e.p1512i.p1516b.p1520f3.C22947c;
import p193e.p1512i.p1516b.p1525o2.C22999b;
import p193e.p1512i.p1516b.p1525o2.RunnableC22997a;
import p193e.p1512i.p1516b.p1527q1.C23010a;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.m2 */
/* loaded from: classes-dex2jar.jar:e/i/b/m2.class */
public class C22989m2 {

    /* renamed from: a */
    public final WeakReference<CriteoBannerView> f63723a;

    /* renamed from: b */
    public final CriteoBannerAdListener f63724b;

    /* renamed from: c */
    public final Criteo f63725c;

    /* renamed from: d */
    public final C22947c f63726d;

    /* renamed from: e */
    public final ExecutorC23149c f63727e;

    public C22989m2(CriteoBannerView criteoBannerView, Criteo criteo, C22947c c22947c, ExecutorC23149c executorC23149c) {
        this.f63723a = new WeakReference<>(criteoBannerView);
        this.f63724b = criteoBannerView.getCriteoBannerAdListener();
        this.f63725c = criteo;
        this.f63726d = c22947c;
        this.f63727e = executorC23149c;
    }

    /* renamed from: a */
    public void m7596a(EnumC23143v2 enumC23143v2) {
        ExecutorC23149c executorC23149c = this.f63727e;
        executorC23149c.f64119a.post(new RunnableC22997a(this.f63724b, this.f63723a, enumC23143v2));
    }

    /* renamed from: b */
    public void m7595b(String str) {
        ExecutorC23149c executorC23149c = this.f63727e;
        executorC23149c.f64119a.post(new C22999b(this.f63723a, new C23010a(new C22974k2(this), this.f63726d.m7616a()), this.f63725c.getConfig(), str));
    }
}
