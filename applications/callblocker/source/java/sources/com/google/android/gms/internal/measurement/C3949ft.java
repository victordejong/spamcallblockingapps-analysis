package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ft */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ft.class */
final class C3949ft<T> implements AbstractC3960gd<T> {

    /* renamed from: a */
    private final AbstractC3943fn f18179a;

    /* renamed from: b */
    private final AbstractC3978gv<?, ?> f18180b;

    /* renamed from: c */
    private final boolean f18181c;

    /* renamed from: d */
    private final AbstractC3887dr<?> f18182d;

    private C3949ft(AbstractC3978gv<?, ?> abstractC3978gv, AbstractC3887dr<?> abstractC3887dr, AbstractC3943fn abstractC3943fn) {
        this.f18180b = abstractC3978gv;
        this.f18181c = abstractC3887dr.mo5686a(abstractC3943fn);
        this.f18182d = abstractC3887dr;
        this.f18179a = abstractC3943fn;
    }

    /* renamed from: a */
    public static <T> C3949ft<T> m5491a(AbstractC3978gv<?, ?> abstractC3978gv, AbstractC3887dr<?> abstractC3887dr, AbstractC3943fn abstractC3943fn) {
        return new C3949ft<>(abstractC3978gv, abstractC3887dr, abstractC3943fn);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final int mo5471a(T t) {
        int hashCode = this.f18180b.mo5324b(t).hashCode();
        int i = hashCode;
        if (this.f18181c) {
            i = (hashCode * 53) + this.f18182d.mo5682a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final T mo5472a() {
        return (T) this.f18179a.mo5539as().mo5545t();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final void mo5470a(T t, AbstractC3961ge abstractC3961ge, C3884dp c3884dp) {
        boolean z;
        AbstractC3978gv<?, ?> abstractC3978gv = this.f18180b;
        AbstractC3887dr<?> abstractC3887dr = this.f18182d;
        Object mo5320c = abstractC3978gv.mo5320c(t);
        C3892dw<?> mo5680b = abstractC3887dr.mo5680b(t);
        do {
            try {
                if (abstractC3961ge.mo5462a() == Integer.MAX_VALUE) {
                    return;
                }
                int mo5457b = abstractC3961ge.mo5457b();
                if (mo5457b == 11) {
                    int i = 0;
                    Object obj = null;
                    AbstractC3859ct abstractC3859ct = null;
                    while (abstractC3961ge.mo5462a() != Integer.MAX_VALUE) {
                        int mo5457b2 = abstractC3961ge.mo5457b();
                        if (mo5457b2 == 16) {
                            i = abstractC3961ge.mo5429o();
                            obj = abstractC3887dr.mo5687a(c3884dp, this.f18179a, i);
                        } else if (mo5457b2 == 26) {
                            if (obj != null) {
                                abstractC3887dr.mo5685a(abstractC3961ge, obj, c3884dp, mo5680b);
                            } else {
                                abstractC3859ct = abstractC3961ge.mo5431n();
                            }
                        } else if (!abstractC3961ge.mo5453c()) {
                            break;
                        }
                    }
                    if (abstractC3961ge.mo5457b() != 12) {
                        throw zzft.m4850e();
                    } else if (abstractC3859ct != null) {
                        if (obj != null) {
                            abstractC3887dr.mo5688a(abstractC3859ct, obj, c3884dp, mo5680b);
                        } else {
                            abstractC3978gv.mo5329a((AbstractC3978gv<?, ?>) mo5320c, i, abstractC3859ct);
                        }
                    }
                } else if ((mo5457b & 7) == 2) {
                    Object mo5687a = abstractC3887dr.mo5687a(c3884dp, this.f18179a, mo5457b >>> 3);
                    if (mo5687a != null) {
                        abstractC3887dr.mo5685a(abstractC3961ge, mo5687a, c3884dp, mo5680b);
                    } else {
                        z = abstractC3978gv.m5335a((AbstractC3978gv<?, ?>) mo5320c, abstractC3961ge);
                    }
                } else {
                    z = abstractC3961ge.mo5453c();
                }
                z = true;
            } finally {
                abstractC3978gv.mo5321b((Object) t, (T) mo5320c);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final void mo5469a(T t, AbstractC4005hr abstractC4005hr) {
        Iterator<Map.Entry<?, Object>> m5662d = this.f18182d.mo5682a(t).m5662d();
        while (m5662d.hasNext()) {
            Map.Entry<?, Object> next = m5662d.next();
            AbstractC3894dy abstractC3894dy = (AbstractC3894dy) next.getKey();
            if (abstractC3894dy.mo5621c() != EnumC4002ho.MESSAGE || abstractC3894dy.mo5620d() || abstractC3894dy.mo5619e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof C3918ep) {
                abstractC4005hr.mo5202a(abstractC3894dy.mo5625a(), (Object) ((C3918ep) next).m5594a().m5590c());
            } else {
                abstractC4005hr.mo5202a(abstractC3894dy.mo5625a(), next.getValue());
            }
        }
        AbstractC3978gv<?, ?> abstractC3978gv = this.f18180b;
        abstractC3978gv.mo5322b((AbstractC3978gv<?, ?>) abstractC3978gv.mo5324b(t), abstractC4005hr);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x002d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014a A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5467a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.measurement.C3858cs r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3949ft.mo5467a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.cs):void");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final boolean mo5468a(T t, T t2) {
        return !this.f18180b.mo5324b(t).equals(this.f18180b.mo5324b(t2)) ? false : this.f18181c ? this.f18182d.mo5682a(t).equals(this.f18182d.mo5682a(t2)) : true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: b */
    public final int mo5466b(T t) {
        AbstractC3978gv<?, ?> abstractC3978gv = this.f18180b;
        int mo5317e = abstractC3978gv.mo5317e(abstractC3978gv.mo5324b(t)) + 0;
        int i = mo5317e;
        if (this.f18181c) {
            i = mo5317e + this.f18182d.mo5682a(t).m5659g();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: b */
    public final void mo5465b(T t, T t2) {
        C3962gf.m5408a(this.f18180b, t, t2);
        if (this.f18181c) {
            C3962gf.m5410a(this.f18182d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: c */
    public final void mo5464c(T t) {
        this.f18180b.mo5318d(t);
        this.f18182d.mo5679c(t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: d */
    public final boolean mo5463d(T t) {
        return this.f18182d.mo5682a(t).m5660f();
    }
}
