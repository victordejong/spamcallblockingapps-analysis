package p081h.p082a.p083a.p088n.p090l;

import p081h.p082a.p083a.p092o.C5523a;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.n.l.c */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/c.class */
public class C5461c {

    /* renamed from: a */
    public final float[] f13600a;

    /* renamed from: b */
    public final int[] f13601b;

    public C5461c(float[] fArr, int[] iArr) {
        this.f13600a = fArr;
        this.f13601b = iArr;
    }

    /* renamed from: a */
    public void m25432a(C5461c cVar, C5461c cVar2, float f) {
        if (cVar.f13601b.length == cVar2.f13601b.length) {
            for (int i = 0; i < cVar.f13601b.length; i++) {
                this.f13600a[i] = C5529e.m25256b(cVar.f13600a[i], cVar2.f13600a[i], f);
                this.f13601b[i] = C5523a.m25282a(f, cVar.f13601b[i], cVar2.f13601b[i]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + cVar.f13601b.length + " vs " + cVar2.f13601b.length + ")");
    }

    /* renamed from: a */
    public int[] m25433a() {
        return this.f13601b;
    }

    /* renamed from: b */
    public float[] m25431b() {
        return this.f13600a;
    }

    /* renamed from: c */
    public int m25430c() {
        return this.f13601b.length;
    }
}
