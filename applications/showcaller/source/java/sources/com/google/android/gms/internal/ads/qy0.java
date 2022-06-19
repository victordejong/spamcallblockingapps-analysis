package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qy0.class */
final class qy0 {

    /* renamed from: a */
    private final C6728m7 f28682a;

    /* renamed from: b */
    private zzfoj<mk3> f28683b = zzfoj.zzi();

    /* renamed from: c */
    private zzfon<mk3, AbstractC6839p7> f28684c = zzfon.zza();

    /* renamed from: d */
    private mk3 f28685d;

    /* renamed from: e */
    private mk3 f28686e;

    /* renamed from: f */
    private mk3 f28687f;

    public qy0(C6728m7 c6728m7) {
        this.f28682a = c6728m7;
    }

    /* renamed from: j */
    private final void m11760j(AbstractC6839p7 abstractC6839p7) {
        dx2<mk3, AbstractC6839p7> dx2Var = new dx2<>();
        if (this.f28683b.isEmpty()) {
            m11759k(dx2Var, this.f28686e, abstractC6839p7);
            if (!tu2.m10497a(this.f28687f, this.f28686e)) {
                m11759k(dx2Var, this.f28687f, abstractC6839p7);
            }
            if (!tu2.m10497a(this.f28685d, this.f28686e) && !tu2.m10497a(this.f28685d, this.f28687f)) {
                m11759k(dx2Var, this.f28685d, abstractC6839p7);
            }
        } else {
            for (int i = 0; i < this.f28683b.size(); i++) {
                m11759k(dx2Var, this.f28683b.get(i), abstractC6839p7);
            }
            if (!this.f28683b.contains(this.f28685d)) {
                m11759k(dx2Var, this.f28685d, abstractC6839p7);
            }
        }
        this.f28684c = dx2Var.m15656c();
    }

    /* renamed from: k */
    private final void m11759k(dx2<mk3, AbstractC6839p7> dx2Var, mk3 mk3Var, AbstractC6839p7 abstractC6839p7) {
        if (mk3Var == null) {
            return;
        }
        if (abstractC6839p7.mo12366i(mk3Var.f20100a) != -1) {
            dx2Var.m15658a(mk3Var, abstractC6839p7);
            return;
        }
        AbstractC6839p7 abstractC6839p72 = this.f28684c.get(mk3Var);
        if (abstractC6839p72 == null) {
            return;
        }
        dx2Var.m15658a(mk3Var, abstractC6839p72);
    }

    /* renamed from: l */
    private static mk3 m11758l(AbstractC6764n6 abstractC6764n6, zzfoj<mk3> zzfojVar, mk3 mk3Var, C6728m7 c6728m7) {
        AbstractC6839p7 mo12991z = abstractC6764n6.mo12991z();
        int zzu = abstractC6764n6.zzu();
        Object mo12365j = mo12991z.m12364k() ? null : mo12991z.mo12365j(zzu);
        int m13349f = (abstractC6764n6.mo12993u() || mo12991z.m12364k()) ? -1 : mo12991z.mo12367h(zzu, c6728m7, false).m13349f(C7130x2.m9368b(abstractC6764n6.mo13001J()));
        for (int i = 0; i < zzfojVar.size(); i++) {
            mk3 mk3Var2 = zzfojVar.get(i);
            if (m11757m(mk3Var2, mo12365j, abstractC6764n6.mo12993u(), abstractC6764n6.mo13000K(), abstractC6764n6.mo12994t(), m13349f)) {
                return mk3Var2;
            }
        }
        if (!zzfojVar.isEmpty() || mk3Var == null || !m11757m(mk3Var, mo12365j, abstractC6764n6.mo12993u(), abstractC6764n6.mo13000K(), abstractC6764n6.mo12994t(), m13349f)) {
            return null;
        }
        return mk3Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r3.f20104e == r8) goto L16;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m11757m(com.google.android.gms.internal.ads.mk3 r3, java.lang.Object r4, boolean r5, int r6, int r7, int r8) {
        /*
            r0 = r3
            java.lang.Object r0 = r0.f20100a
            r1 = r4
            boolean r0 = r0.equals(r1)
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r5
            if (r0 == 0) goto L31
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.f20101b
            r1 = r6
            if (r0 != r1) goto L4a
            r0 = r3
            int r0 = r0.f20102c
            r1 = r7
            if (r0 != r1) goto L2f
            goto L48
        L2f:
            r0 = 0
            return r0
        L31:
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.f20101b
            r1 = -1
            if (r0 != r1) goto L4a
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.f20104e
            r1 = r8
            if (r0 != r1) goto L4a
        L48:
            r0 = 1
            r5 = r0
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qy0.m11757m(com.google.android.gms.internal.ads.mk3, java.lang.Object, boolean, int, int, int):boolean");
    }

    /* renamed from: b */
    public final mk3 m11768b() {
        return this.f28685d;
    }

    /* renamed from: c */
    public final mk3 m11767c() {
        return this.f28686e;
    }

    /* renamed from: d */
    public final mk3 m11766d() {
        return this.f28687f;
    }

    /* renamed from: e */
    public final mk3 m11765e() {
        mk3 mk3Var;
        if (this.f28683b.isEmpty()) {
            return null;
        }
        zzfoj<mk3> zzfojVar = this.f28683b;
        if (!(zzfojVar instanceof List)) {
            Iterator<mk3> it = zzfojVar.iterator();
            do {
                mk3Var = it.next();
            } while (it.hasNext());
        } else if (zzfojVar.isEmpty()) {
            throw new NoSuchElementException();
        } else {
            mk3Var = zzfojVar.get(zzfojVar.size() - 1);
        }
        return mk3Var;
    }

    /* renamed from: f */
    public final AbstractC6839p7 m11764f(mk3 mk3Var) {
        return this.f28684c.get(mk3Var);
    }

    /* renamed from: g */
    public final void m11763g(AbstractC6764n6 abstractC6764n6) {
        this.f28685d = m11758l(abstractC6764n6, this.f28683b, this.f28686e, this.f28682a);
    }

    /* renamed from: h */
    public final void m11762h(AbstractC6764n6 abstractC6764n6) {
        this.f28685d = m11758l(abstractC6764n6, this.f28683b, this.f28686e, this.f28682a);
        m11760j(abstractC6764n6.mo12991z());
    }

    /* renamed from: i */
    public final void m11761i(List<mk3> list, mk3 mk3Var, AbstractC6764n6 abstractC6764n6) {
        this.f28683b = zzfoj.zzp(list);
        if (!list.isEmpty()) {
            this.f28686e = list.get(0);
            Objects.requireNonNull(mk3Var);
            this.f28687f = mk3Var;
        }
        if (this.f28685d == null) {
            this.f28685d = m11758l(abstractC6764n6, this.f28683b, this.f28686e, this.f28682a);
        }
        m11760j(abstractC6764n6.mo12991z());
    }
}
