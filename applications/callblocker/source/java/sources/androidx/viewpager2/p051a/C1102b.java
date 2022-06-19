package androidx.viewpager2.p051a;

import androidx.viewpager2.p051a.C1107f;
import java.util.ConcurrentModificationException;
import java.util.List;
/* renamed from: androidx.viewpager2.a.b */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/b.class */
public final class C1102b extends C1107f.AbstractC1109b {

    /* renamed from: a */
    private final List<C1107f.AbstractC1109b> f3793a;

    /* renamed from: a */
    private void m18038a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: a */
    public void mo17999a(int i) {
        try {
            for (C1107f.AbstractC1109b abstractC1109b : this.f3793a) {
                abstractC1109b.mo17999a(i);
            }
        } catch (ConcurrentModificationException e) {
            m18038a(e);
        }
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: a */
    public void mo17998a(int i, float f, int i2) {
        try {
            for (C1107f.AbstractC1109b abstractC1109b : this.f3793a) {
                abstractC1109b.mo17998a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m18038a(e);
        }
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: b */
    public void mo17997b(int i) {
        try {
            for (C1107f.AbstractC1109b abstractC1109b : this.f3793a) {
                abstractC1109b.mo17997b(i);
            }
        } catch (ConcurrentModificationException e) {
            m18038a(e);
        }
    }
}
