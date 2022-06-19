package p193e.p1512i.p1516b.p1537z1;

import java.util.Collection;
import java.util.Objects;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1537z1.AbstractC23172b0;
/* renamed from: e.i.b.z1.s */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/s.class */
public class C23200s extends AbstractC23172b0 {

    /* renamed from: a */
    public final AbstractC23172b0 f64241a;

    /* renamed from: b */
    public final C23080f f64242b;

    public C23200s(AbstractC23172b0 abstractC23172b0, C23080f c23080f) {
        this.f64241a = abstractC23172b0;
        this.f64242b = c23080f;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: a */
    public Collection<AbstractC23211x> mo7378a() {
        return this.f64241a.mo7378a();
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: b */
    public void mo7377b(String str, AbstractC23215z abstractC23215z) {
        this.f64241a.mo7377b(str, abstractC23215z);
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: c */
    public void mo7376c(String str, AbstractC23172b0.AbstractC23173a abstractC23173a) {
        int mo7374e = this.f64241a.mo7374e();
        Objects.requireNonNull(this.f64242b);
        if (mo7374e < 49152 || this.f64241a.mo7375d(str)) {
            this.f64241a.mo7376c(str, abstractC23173a);
        }
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: d */
    public boolean mo7375d(String str) {
        return this.f64241a.mo7375d(str);
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: e */
    public int mo7374e() {
        return this.f64241a.mo7374e();
    }
}
