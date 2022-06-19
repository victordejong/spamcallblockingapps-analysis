package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.p063b.AbstractC1443f;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h.class */
public abstract class AbstractC1905h extends AbstractC1443f implements AbstractC1886d {

    /* renamed from: d */
    private AbstractC1886d f7660d;

    /* renamed from: e */
    private long f7661e;

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        return ((AbstractC1886d) C1993a.m41690a(this.f7660d)).mo41884a(j - this.f7661e);
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1436a
    /* renamed from: a */
    public final void mo41916a() {
        super.mo41916a();
        this.f7660d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public final void m41915a(long j, AbstractC1886d abstractC1886d, long j2) {
        this.f5498b = j;
        this.f7660d = abstractC1886d;
        char c = j2;
        if (j2 == Long.MAX_VALUE) {
            c = this.f5498b;
        }
        this.f7661e = c;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        return ((AbstractC1886d) C1993a.m41690a(this.f7660d)).mo41883a_(i) + this.f7661e;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return ((AbstractC1886d) C1993a.m41690a(this.f7660d)).mo41882b();
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        return ((AbstractC1886d) C1993a.m41690a(this.f7660d)).mo41881b(j - this.f7661e);
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1443f
    /* renamed from: f */
    public abstract void mo41914f();
}
