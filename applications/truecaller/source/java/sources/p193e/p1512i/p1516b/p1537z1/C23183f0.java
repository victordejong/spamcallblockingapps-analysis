package p193e.p1512i.p1516b.p1537z1;

import java.util.Objects;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import s1.z.c.l;
/* renamed from: e.i.b.z1.f0 */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/f0.class */
public class C23183f0 implements AbstractC23188h<AbstractC23211x> {

    /* renamed from: a */
    public final Class<AbstractC23211x> f64160a = AbstractC23211x.class;

    /* renamed from: b */
    public final C23080f f64161b;

    public C23183f0(C23080f c23080f) {
        l.f(c23080f, "buildConfigWrapper");
        this.f64161b = c23080f;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: a */
    public int mo7419a() {
        Objects.requireNonNull(this.f64161b);
        return 170;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: b */
    public Class<AbstractC23211x> mo7418b() {
        return this.f64160a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: c */
    public int mo7417c() {
        Objects.requireNonNull(this.f64161b);
        return 61440;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: d */
    public String mo7416d() {
        Objects.requireNonNull(this.f64161b);
        l.b("criteo_metrics_queue", "buildConfigWrapper.csmQueueFilename");
        return "criteo_metrics_queue";
    }
}
