package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.dl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dl.class */
public final class C3880dl implements AbstractC3961ge {

    /* renamed from: a */
    private final AbstractC3875dg f17992a;

    /* renamed from: b */
    private int f17993b;

    /* renamed from: c */
    private int f17994c;

    /* renamed from: d */
    private int f17995d = 0;

    private C3880dl(AbstractC3875dg abstractC3875dg) {
        this.f17992a = (AbstractC3875dg) C3908ef.m5610a(abstractC3875dg, "input");
        this.f17992a.f17980c = this;
    }

    /* renamed from: a */
    public static C3880dl m5706a(AbstractC3875dg abstractC3875dg) {
        return abstractC3875dg.f17980c != null ? abstractC3875dg.f17980c : new C3880dl(abstractC3875dg);
    }

    /* renamed from: a */
    private final Object m5705a(EnumC3999hl enumC3999hl, Class<?> cls, C3884dp c3884dp) {
        Object valueOf;
        switch (C3879dk.f17991a[enumC3999hl.ordinal()]) {
            case 1:
                valueOf = Boolean.valueOf(mo5437k());
                break;
            case 2:
                valueOf = mo5431n();
                break;
            case 3:
                valueOf = Double.valueOf(mo5451d());
                break;
            case 4:
                valueOf = Integer.valueOf(mo5427p());
                break;
            case 5:
                valueOf = Integer.valueOf(mo5439j());
                break;
            case 6:
                valueOf = Long.valueOf(mo5441i());
                break;
            case 7:
                valueOf = Float.valueOf(mo5449e());
                break;
            case 8:
                valueOf = Integer.valueOf(mo5443h());
                break;
            case 9:
                valueOf = Long.valueOf(mo5445g());
                break;
            case 10:
                m5707a(2);
                valueOf = m5701c(C3955fz.m5481a().m5480a((Class) cls), c3884dp);
                break;
            case 11:
                valueOf = Integer.valueOf(mo5425q());
                break;
            case 12:
                valueOf = Long.valueOf(mo5423r());
                break;
            case 13:
                valueOf = Integer.valueOf(mo5422s());
                break;
            case 14:
                valueOf = Long.valueOf(mo5421t());
                break;
            case 15:
                valueOf = mo5433m();
                break;
            case 16:
                valueOf = Integer.valueOf(mo5429o());
                break;
            case 17:
                valueOf = Long.valueOf(mo5447f());
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return valueOf;
    }

    /* renamed from: a */
    private final void m5707a(int i) {
        if ((this.f17993b & 7) != i) {
            throw zzft.m4849f();
        }
    }

    /* renamed from: a */
    private final void m5704a(List<String> list, boolean z) {
        int mo5738a;
        int mo5738a2;
        if ((this.f17993b & 7) != 2) {
            throw zzft.m4849f();
        }
        if (!(list instanceof AbstractC3923eu) || z) {
            do {
                list.add(z ? mo5433m() : mo5435l());
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        AbstractC3923eu abstractC3923eu = (AbstractC3923eu) list;
        do {
            abstractC3923eu.mo5304a(mo5431n());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    /* renamed from: b */
    private static void m5703b(int i) {
        if ((i & 7) != 0) {
            throw zzft.m4848g();
        }
    }

    /* renamed from: c */
    private final <T> T m5701c(AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        int mo5721m = this.f17992a.mo5721m();
        if (this.f17992a.f17978a >= this.f17992a.f17979b) {
            throw new zzft("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int mo5733c = this.f17992a.mo5733c(mo5721m);
        T mo5472a = abstractC3960gd.mo5472a();
        this.f17992a.f17978a++;
        abstractC3960gd.mo5470a(mo5472a, this, c3884dp);
        abstractC3960gd.mo5464c(mo5472a);
        this.f17992a.mo5737a(0);
        this.f17992a.f17978a--;
        this.f17992a.mo5731d(mo5733c);
        return mo5472a;
    }

    /* renamed from: c */
    private static void m5702c(int i) {
        if ((i & 3) != 0) {
            throw zzft.m4848g();
        }
    }

    /* renamed from: d */
    private final <T> T m5699d(AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        int i = this.f17994c;
        this.f17994c = ((this.f17993b >>> 3) << 3) | 4;
        try {
            T mo5472a = abstractC3960gd.mo5472a();
            abstractC3960gd.mo5470a(mo5472a, this, c3884dp);
            abstractC3960gd.mo5464c(mo5472a);
            if (this.f17993b == this.f17994c) {
                return mo5472a;
            }
            throw zzft.m4848g();
        } finally {
            this.f17994c = i;
        }
    }

    /* renamed from: d */
    private final void m5700d(int i) {
        if (this.f17992a.mo5713u() != i) {
            throw zzft.m4854a();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: a */
    public final int mo5462a() {
        if (this.f17995d != 0) {
            this.f17993b = this.f17995d;
            this.f17995d = 0;
        } else {
            this.f17993b = this.f17992a.mo5738a();
        }
        return (this.f17993b == 0 || this.f17993b == this.f17994c) ? Integer.MAX_VALUE : this.f17993b >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: a */
    public final <T> T mo5461a(AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        m5707a(2);
        return (T) m5701c(abstractC3960gd, c3884dp);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: a */
    public final void mo5460a(List<Double> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3882dn)) {
            switch (this.f17993b & 7) {
                case 1:
                    break;
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5703b(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Double.valueOf(this.f17992a.mo5736b()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                default:
                    throw zzft.m4849f();
            }
            do {
                list.add(Double.valueOf(this.f17992a.mo5736b()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3882dn c3882dn = (C3882dn) list;
        switch (this.f17993b & 7) {
            case 1:
                break;
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5703b(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3882dn.m5698a(this.f17992a.mo5736b());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            default:
                throw zzft.m4849f();
        }
        do {
            c3882dn.m5698a(this.f17992a.mo5736b());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: a */
    public final <T> void mo5459a(List<T> list, AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        int mo5738a;
        if ((this.f17993b & 7) != 2) {
            throw zzft.m4849f();
        }
        int i = this.f17993b;
        do {
            list.add(m5701c(abstractC3960gd, c3884dp));
            if (this.f17992a.mo5714t() || this.f17995d != 0) {
                return;
            }
            mo5738a = this.f17992a.mo5738a();
        } while (mo5738a == i);
        this.f17995d = mo5738a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c7, code lost:
        r6.put(r0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
        return;
     */
    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void mo5458a(java.util.Map<K, V> r6, com.google.android.gms.internal.measurement.C3934fe<K, V> r7, com.google.android.gms.internal.measurement.C3884dp r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = 2
            r0.m5707a(r1)
            r0 = r5
            com.google.android.gms.internal.measurement.dg r0 = r0.f17992a
            int r0 = r0.mo5721m()
            r9 = r0
            r0 = r5
            com.google.android.gms.internal.measurement.dg r0 = r0.f17992a
            r1 = r9
            int r0 = r0.mo5733c(r1)
            r9 = r0
            r0 = r7
            K r0 = r0.f18152b
            r10 = r0
            r0 = r7
            V r0 = r0.f18154d
            r11 = r0
        L25:
            r0 = r10
            r12 = r0
            r0 = r5
            int r0 = r0.mo5462a()     // Catch: java.lang.Throwable -> L8f
            r13 = r0
            r0 = r13
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto Lc7
            r0 = r5
            com.google.android.gms.internal.measurement.dg r0 = r0.f17992a     // Catch: java.lang.Throwable -> L8f
            boolean r0 = r0.mo5714t()     // Catch: java.lang.Throwable -> L8f
            r14 = r0
            r0 = r14
            if (r0 != 0) goto Lc7
            r0 = r13
            switch(r0) {
                case 1: goto L9b;
                case 2: goto Laa;
                default: goto L5c;
            }
        L5c:
            r0 = r12
            r10 = r0
            r0 = r5
            boolean r0 = r0.mo5453c()     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            if (r0 != 0) goto L25
            com.google.android.gms.internal.measurement.zzft r0 = new com.google.android.gms.internal.measurement.zzft     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Unable to parse map entry."
            r0.<init>(r1)     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r0 = r10
            throw r0     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
        L76:
            r10 = move-exception
            r0 = r12
            r10 = r0
            r0 = r5
            boolean r0 = r0.mo5453c()     // Catch: java.lang.Throwable -> L8f
            if (r0 != 0) goto L25
            com.google.android.gms.internal.measurement.zzft r0 = new com.google.android.gms.internal.measurement.zzft     // Catch: java.lang.Throwable -> L8f
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Unable to parse map entry."
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8f
            r0 = r6
            throw r0     // Catch: java.lang.Throwable -> L8f
        L8f:
            r6 = move-exception
            r0 = r5
            com.google.android.gms.internal.measurement.dg r0 = r0.f17992a
            r1 = r9
            r0.mo5731d(r1)
            r0 = r6
            throw r0
        L9b:
            r0 = r5
            r1 = r7
            com.google.android.gms.internal.measurement.hl r1 = r1.f18151a     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r2 = 0
            r3 = 0
            java.lang.Object r0 = r0.m5705a(r1, r2, r3)     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r10 = r0
            goto L25
        Laa:
            r0 = r5
            r1 = r7
            com.google.android.gms.internal.measurement.hl r1 = r1.f18153c     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r2 = r7
            V r2 = r2.f18154d     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            java.lang.Class r2 = r2.getClass()     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r3 = r8
            java.lang.Object r0 = r0.m5705a(r1, r2, r3)     // Catch: com.google.android.gms.internal.measurement.zzfs -> L76 java.lang.Throwable -> L8f
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r12
            r10 = r0
            goto L25
        Lc7:
            r0 = r6
            r1 = r12
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L8f
            r0 = r5
            com.google.android.gms.internal.measurement.dg r0 = r0.f17992a
            r1 = r9
            r0.mo5731d(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3880dl.mo5458a(java.util.Map, com.google.android.gms.internal.measurement.fe, com.google.android.gms.internal.measurement.dp):void");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: b */
    public final int mo5457b() {
        return this.f17993b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: b */
    public final <T> T mo5456b(AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        m5707a(3);
        return (T) m5699d(abstractC3960gd, c3884dp);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: b */
    public final void mo5455b(List<Float> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3899ec)) {
            switch (this.f17993b & 7) {
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5702c(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Float.valueOf(this.f17992a.mo5734c()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzft.m4849f();
                case 5:
                    break;
            }
            do {
                list.add(Float.valueOf(this.f17992a.mo5734c()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3899ec c3899ec = (C3899ec) list;
        switch (this.f17993b & 7) {
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5702c(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3899ec.m5655a(this.f17992a.mo5734c());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            case 3:
            case 4:
            default:
                throw zzft.m4849f();
            case 5:
                break;
        }
        do {
            c3899ec.m5655a(this.f17992a.mo5734c());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: b */
    public final <T> void mo5454b(List<T> list, AbstractC3960gd<T> abstractC3960gd, C3884dp c3884dp) {
        int mo5738a;
        if ((this.f17993b & 7) != 3) {
            throw zzft.m4849f();
        }
        int i = this.f17993b;
        do {
            list.add(m5699d(abstractC3960gd, c3884dp));
            if (this.f17992a.mo5714t() || this.f17995d != 0) {
                return;
            }
            mo5738a = this.f17992a.mo5738a();
        } while (mo5738a == i);
        this.f17995d = mo5738a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: c */
    public final void mo5452c(List<Long> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3931fb)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Long.valueOf(this.f17992a.mo5732d()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f17992a.mo5732d()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3931fb c3931fb = (C3931fb) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3931fb.m5576a(this.f17992a.mo5732d());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3931fb.m5576a(this.f17992a.mo5732d());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: c */
    public final boolean mo5453c() {
        return (this.f17992a.mo5714t() || this.f17993b == this.f17994c) ? false : this.f17992a.mo5735b(this.f17993b);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: d */
    public final double mo5451d() {
        m5707a(1);
        return this.f17992a.mo5736b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: d */
    public final void mo5450d(List<Long> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3931fb)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Long.valueOf(this.f17992a.mo5730e()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f17992a.mo5730e()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3931fb c3931fb = (C3931fb) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3931fb.m5576a(this.f17992a.mo5730e());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3931fb.m5576a(this.f17992a.mo5730e());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: e */
    public final float mo5449e() {
        m5707a(5);
        return this.f17992a.mo5734c();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: e */
    public final void mo5448e(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5729f()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5729f()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5729f());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5729f());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: f */
    public final long mo5447f() {
        m5707a(0);
        return this.f17992a.mo5732d();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: f */
    public final void mo5446f(List<Long> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3931fb)) {
            switch (this.f17993b & 7) {
                case 1:
                    break;
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5703b(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Long.valueOf(this.f17992a.mo5727g()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                default:
                    throw zzft.m4849f();
            }
            do {
                list.add(Long.valueOf(this.f17992a.mo5727g()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3931fb c3931fb = (C3931fb) list;
        switch (this.f17993b & 7) {
            case 1:
                break;
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5703b(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3931fb.m5576a(this.f17992a.mo5727g());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            default:
                throw zzft.m4849f();
        }
        do {
            c3931fb.m5576a(this.f17992a.mo5727g());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: g */
    public final long mo5445g() {
        m5707a(0);
        return this.f17992a.mo5730e();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: g */
    public final void mo5444g(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5702c(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5726h()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzft.m4849f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5726h()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5702c(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5726h());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            case 3:
            case 4:
            default:
                throw zzft.m4849f();
            case 5:
                break;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5726h());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: h */
    public final int mo5443h() {
        m5707a(0);
        return this.f17992a.mo5729f();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: h */
    public final void mo5442h(List<Boolean> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3857cr)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Boolean.valueOf(this.f17992a.mo5725i()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Boolean.valueOf(this.f17992a.mo5725i()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3857cr c3857cr = (C3857cr) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3857cr.m5816a(this.f17992a.mo5725i());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3857cr.m5816a(this.f17992a.mo5725i());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: i */
    public final long mo5441i() {
        m5707a(1);
        return this.f17992a.mo5727g();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: i */
    public final void mo5440i(List<String> list) {
        m5704a(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: j */
    public final int mo5439j() {
        m5707a(5);
        return this.f17992a.mo5726h();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: j */
    public final void mo5438j(List<String> list) {
        m5704a(list, true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: k */
    public final void mo5436k(List<AbstractC3859ct> list) {
        int mo5738a;
        if ((this.f17993b & 7) != 2) {
            throw zzft.m4849f();
        }
        do {
            list.add(mo5431n());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a = this.f17992a.mo5738a();
        } while (mo5738a == this.f17993b);
        this.f17995d = mo5738a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: k */
    public final boolean mo5437k() {
        m5707a(0);
        return this.f17992a.mo5725i();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: l */
    public final String mo5435l() {
        m5707a(2);
        return this.f17992a.mo5724j();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: l */
    public final void mo5434l(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5721m()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5721m()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5721m());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5721m());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: m */
    public final String mo5433m() {
        m5707a(2);
        return this.f17992a.mo5723k();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: m */
    public final void mo5432m(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5720n()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5720n()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5720n());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5720n());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: n */
    public final AbstractC3859ct mo5431n() {
        m5707a(2);
        return this.f17992a.mo5722l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: n */
    public final void mo5430n(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5702c(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5719o()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzft.m4849f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5719o()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5702c(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5719o());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            case 3:
            case 4:
            default:
                throw zzft.m4849f();
            case 5:
                break;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5719o());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: o */
    public final int mo5429o() {
        m5707a(0);
        return this.f17992a.mo5721m();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: o */
    public final void mo5428o(List<Long> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3931fb)) {
            switch (this.f17993b & 7) {
                case 1:
                    break;
                case 2:
                    int mo5721m = this.f17992a.mo5721m();
                    m5703b(mo5721m);
                    int mo5713u = this.f17992a.mo5713u();
                    do {
                        list.add(Long.valueOf(this.f17992a.mo5718p()));
                    } while (this.f17992a.mo5713u() < mo5721m + mo5713u);
                    return;
                default:
                    throw zzft.m4849f();
            }
            do {
                list.add(Long.valueOf(this.f17992a.mo5718p()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3931fb c3931fb = (C3931fb) list;
        switch (this.f17993b & 7) {
            case 1:
                break;
            case 2:
                int mo5721m2 = this.f17992a.mo5721m();
                m5703b(mo5721m2);
                int mo5713u2 = this.f17992a.mo5713u();
                do {
                    c3931fb.m5576a(this.f17992a.mo5718p());
                } while (this.f17992a.mo5713u() < mo5721m2 + mo5713u2);
                return;
            default:
                throw zzft.m4849f();
        }
        do {
            c3931fb.m5576a(this.f17992a.mo5718p());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: p */
    public final int mo5427p() {
        m5707a(0);
        return this.f17992a.mo5720n();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: p */
    public final void mo5426p(List<Integer> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3909eg)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Integer.valueOf(this.f17992a.mo5717q()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f17992a.mo5717q()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3909eg c3909eg = (C3909eg) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3909eg.m5603d(this.f17992a.mo5717q());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3909eg.m5603d(this.f17992a.mo5717q());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: q */
    public final int mo5425q() {
        m5707a(5);
        return this.f17992a.mo5719o();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: q */
    public final void mo5424q(List<Long> list) {
        int mo5738a;
        int mo5738a2;
        if (!(list instanceof C3931fb)) {
            switch (this.f17993b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzft.m4849f();
                case 2:
                    int mo5721m = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                    do {
                        list.add(Long.valueOf(this.f17992a.mo5716r()));
                    } while (this.f17992a.mo5713u() < mo5721m);
                    m5700d(mo5721m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f17992a.mo5716r()));
                if (this.f17992a.mo5714t()) {
                    return;
                }
                mo5738a = this.f17992a.mo5738a();
            } while (mo5738a == this.f17993b);
            this.f17995d = mo5738a;
            return;
        }
        C3931fb c3931fb = (C3931fb) list;
        switch (this.f17993b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzft.m4849f();
            case 2:
                int mo5721m2 = this.f17992a.mo5721m() + this.f17992a.mo5713u();
                do {
                    c3931fb.m5576a(this.f17992a.mo5716r());
                } while (this.f17992a.mo5713u() < mo5721m2);
                m5700d(mo5721m2);
                return;
        }
        do {
            c3931fb.m5576a(this.f17992a.mo5716r());
            if (this.f17992a.mo5714t()) {
                return;
            }
            mo5738a2 = this.f17992a.mo5738a();
        } while (mo5738a2 == this.f17993b);
        this.f17995d = mo5738a2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: r */
    public final long mo5423r() {
        m5707a(1);
        return this.f17992a.mo5718p();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: s */
    public final int mo5422s() {
        m5707a(0);
        return this.f17992a.mo5717q();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3961ge
    /* renamed from: t */
    public final long mo5421t() {
        m5707a(0);
        return this.f17992a.mo5716r();
    }
}
