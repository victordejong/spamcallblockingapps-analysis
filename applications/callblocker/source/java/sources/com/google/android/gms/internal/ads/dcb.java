package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcb.class */
public final class dcb implements dex {

    /* renamed from: a */
    private final dby f13973a;

    /* renamed from: b */
    private int f13974b;

    /* renamed from: c */
    private int f13975c;

    /* renamed from: d */
    private int f13976d = 0;

    private dcb(dby dbyVar) {
        this.f13973a = (dby) dcz.m10045a(dbyVar, "input");
        this.f13973a.f13954d = this;
    }

    /* renamed from: a */
    public static dcb m10150a(dby dbyVar) {
        return dbyVar.f13954d != null ? dbyVar.f13954d : new dcb(dbyVar);
    }

    /* renamed from: a */
    private final Object m10149a(dgi dgiVar, Class<?> cls, dci dciVar) {
        Object valueOf;
        switch (dcd.f13977a[dgiVar.ordinal()]) {
            case 1:
                valueOf = Boolean.valueOf(mo9875k());
                break;
            case 2:
                valueOf = mo9869n();
                break;
            case 3:
                valueOf = Double.valueOf(mo9889d());
                break;
            case 4:
                valueOf = Integer.valueOf(mo9865p());
                break;
            case 5:
                valueOf = Integer.valueOf(mo9877j());
                break;
            case 6:
                valueOf = Long.valueOf(mo9879i());
                break;
            case 7:
                valueOf = Float.valueOf(mo9887e());
                break;
            case 8:
                valueOf = Integer.valueOf(mo9881h());
                break;
            case 9:
                valueOf = Long.valueOf(mo9883g());
                break;
            case 10:
                m10151a(2);
                valueOf = m10145c(der.m9928a().m9927a((Class) cls), dciVar);
                break;
            case 11:
                valueOf = Integer.valueOf(mo9863q());
                break;
            case 12:
                valueOf = Long.valueOf(mo9861r());
                break;
            case 13:
                valueOf = Integer.valueOf(mo9860s());
                break;
            case 14:
                valueOf = Long.valueOf(mo9859t());
                break;
            case 15:
                valueOf = mo9871m();
                break;
            case 16:
                valueOf = Integer.valueOf(mo9867o());
                break;
            case 17:
                valueOf = Long.valueOf(mo9885f());
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return valueOf;
    }

    /* renamed from: a */
    private final void m10151a(int i) {
        if ((this.f13974b & 7) != i) {
            throw zzeco.m6545f();
        }
    }

    /* renamed from: a */
    private final void m10148a(List<String> list, boolean z) {
        int mo10182a;
        int mo10182a2;
        if ((this.f13974b & 7) != 2) {
            throw zzeco.m6545f();
        }
        if (!(list instanceof ddm) || z) {
            do {
                list.add(z ? mo9871m() : mo9873l());
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddm ddmVar = (ddm) list;
        do {
            ddmVar.mo9740a(mo9869n());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    /* renamed from: b */
    private static void m10147b(int i) {
        if ((i & 7) != 0) {
            throw zzeco.m6543h();
        }
    }

    /* renamed from: c */
    private final <T> T m10145c(dfd<T> dfdVar, dci dciVar) {
        int mo10165m = this.f13973a.mo10165m();
        if (this.f13973a.f13951a >= this.f13973a.f13952b) {
            throw new zzeco("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int mo10177c = this.f13973a.mo10177c(mo10165m);
        T mo9846a = dfdVar.mo9846a();
        this.f13973a.f13951a++;
        dfdVar.mo9844a(mo9846a, this, dciVar);
        dfdVar.mo9838c(mo9846a);
        this.f13973a.mo10181a(0);
        this.f13973a.f13951a--;
        this.f13973a.mo10175d(mo10177c);
        return mo9846a;
    }

    /* renamed from: c */
    private static void m10146c(int i) {
        if ((i & 3) != 0) {
            throw zzeco.m6543h();
        }
    }

    /* renamed from: d */
    private final <T> T m10143d(dfd<T> dfdVar, dci dciVar) {
        int i = this.f13975c;
        this.f13975c = ((this.f13974b >>> 3) << 3) | 4;
        try {
            T mo9846a = dfdVar.mo9846a();
            dfdVar.mo9844a(mo9846a, this, dciVar);
            dfdVar.mo9838c(mo9846a);
            if (this.f13974b == this.f13975c) {
                return mo9846a;
            }
            throw zzeco.m6543h();
        } finally {
            this.f13975c = i;
        }
    }

    /* renamed from: d */
    private final void m10144d(int i) {
        if (this.f13973a.mo10157u() != i) {
            throw zzeco.m6551a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: a */
    public final int mo9900a() {
        if (this.f13976d != 0) {
            this.f13974b = this.f13976d;
            this.f13976d = 0;
        } else {
            this.f13974b = this.f13973a.mo10182a();
        }
        return (this.f13974b == 0 || this.f13974b == this.f13975c) ? Integer.MAX_VALUE : this.f13974b >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: a */
    public final <T> T mo9899a(dfd<T> dfdVar, dci dciVar) {
        m10151a(2);
        return (T) m10145c(dfdVar, dciVar);
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: a */
    public final void mo9898a(List<Double> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dch)) {
            switch (this.f13974b & 7) {
                case 1:
                    break;
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10147b(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Double.valueOf(this.f13973a.mo10180b()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                default:
                    throw zzeco.m6545f();
            }
            do {
                list.add(Double.valueOf(this.f13973a.mo10180b()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dch dchVar = (dch) list;
        switch (this.f13974b & 7) {
            case 1:
                break;
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10147b(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dchVar.m10141a(this.f13973a.mo10180b());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            default:
                throw zzeco.m6545f();
        }
        do {
            dchVar.m10141a(this.f13973a.mo10180b());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: a */
    public final <T> void mo9897a(List<T> list, dfd<T> dfdVar, dci dciVar) {
        int mo10182a;
        if ((this.f13974b & 7) != 2) {
            throw zzeco.m6545f();
        }
        int i = this.f13974b;
        do {
            list.add(m10145c(dfdVar, dciVar));
            if (this.f13973a.mo10158t() || this.f13976d != 0) {
                return;
            }
            mo10182a = this.f13973a.mo10182a();
        } while (mo10182a == i);
        this.f13976d = mo10182a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c7, code lost:
        r6.put(r0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
        return;
     */
    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void mo9896a(java.util.Map<K, V> r6, com.google.android.gms.internal.ads.ddx<K, V> r7, com.google.android.gms.internal.ads.dci r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = 2
            r0.m10151a(r1)
            r0 = r5
            com.google.android.gms.internal.ads.dby r0 = r0.f13973a
            int r0 = r0.mo10165m()
            r9 = r0
            r0 = r5
            com.google.android.gms.internal.ads.dby r0 = r0.f13973a
            r1 = r9
            int r0 = r0.mo10177c(r1)
            r9 = r0
            r0 = r7
            K r0 = r0.f14132b
            r10 = r0
            r0 = r7
            V r0 = r0.f14134d
            r11 = r0
        L25:
            r0 = r10
            r12 = r0
            r0 = r5
            int r0 = r0.mo9900a()     // Catch: java.lang.Throwable -> L8f
            r13 = r0
            r0 = r13
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto Lc7
            r0 = r5
            com.google.android.gms.internal.ads.dby r0 = r0.f13973a     // Catch: java.lang.Throwable -> L8f
            boolean r0 = r0.mo10158t()     // Catch: java.lang.Throwable -> L8f
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
            boolean r0 = r0.mo9891c()     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            if (r0 != 0) goto L25
            com.google.android.gms.internal.ads.zzeco r0 = new com.google.android.gms.internal.ads.zzeco     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Unable to parse map entry."
            r0.<init>(r1)     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r0 = r10
            throw r0     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
        L76:
            r10 = move-exception
            r0 = r12
            r10 = r0
            r0 = r5
            boolean r0 = r0.mo9891c()     // Catch: java.lang.Throwable -> L8f
            if (r0 != 0) goto L25
            com.google.android.gms.internal.ads.zzeco r0 = new com.google.android.gms.internal.ads.zzeco     // Catch: java.lang.Throwable -> L8f
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Unable to parse map entry."
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8f
            r0 = r6
            throw r0     // Catch: java.lang.Throwable -> L8f
        L8f:
            r6 = move-exception
            r0 = r5
            com.google.android.gms.internal.ads.dby r0 = r0.f13973a
            r1 = r9
            r0.mo10175d(r1)
            r0 = r6
            throw r0
        L9b:
            r0 = r5
            r1 = r7
            com.google.android.gms.internal.ads.dgi r1 = r1.f14131a     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r2 = 0
            r3 = 0
            java.lang.Object r0 = r0.m10149a(r1, r2, r3)     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r10 = r0
            goto L25
        Laa:
            r0 = r5
            r1 = r7
            com.google.android.gms.internal.ads.dgi r1 = r1.f14133c     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r2 = r7
            V r2 = r2.f14134d     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            java.lang.Class r2 = r2.getClass()     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
            r3 = r8
            java.lang.Object r0 = r0.m10149a(r1, r2, r3)     // Catch: com.google.android.gms.internal.ads.zzecn -> L76 java.lang.Throwable -> L8f
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
            com.google.android.gms.internal.ads.dby r0 = r0.f13973a
            r1 = r9
            r0.mo10175d(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dcb.mo9896a(java.util.Map, com.google.android.gms.internal.ads.ddx, com.google.android.gms.internal.ads.dci):void");
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: b */
    public final int mo9895b() {
        return this.f13974b;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: b */
    public final <T> T mo9894b(dfd<T> dfdVar, dci dciVar) {
        m10151a(3);
        return (T) m10143d(dfdVar, dciVar);
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: b */
    public final void mo9893b(List<Float> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcr)) {
            switch (this.f13974b & 7) {
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10146c(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Float.valueOf(this.f13973a.mo10178c()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzeco.m6545f();
                case 5:
                    break;
            }
            do {
                list.add(Float.valueOf(this.f13973a.mo10178c()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcr dcrVar = (dcr) list;
        switch (this.f13974b & 7) {
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10146c(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dcrVar.m10102a(this.f13973a.mo10178c());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            case 3:
            case 4:
            default:
                throw zzeco.m6545f();
            case 5:
                break;
        }
        do {
            dcrVar.m10102a(this.f13973a.mo10178c());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: b */
    public final <T> void mo9892b(List<T> list, dfd<T> dfdVar, dci dciVar) {
        int mo10182a;
        if ((this.f13974b & 7) != 3) {
            throw zzeco.m6545f();
        }
        int i = this.f13974b;
        do {
            list.add(m10143d(dfdVar, dciVar));
            if (this.f13973a.mo10158t() || this.f13976d != 0) {
                return;
            }
            mo10182a = this.f13973a.mo10182a();
        } while (mo10182a == i);
        this.f13976d = mo10182a;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: c */
    public final void mo9890c(List<Long> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof ddu)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Long.valueOf(this.f13973a.mo10176d()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f13973a.mo10176d()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddu dduVar = (ddu) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dduVar.m10018a(this.f13973a.mo10176d());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dduVar.m10018a(this.f13973a.mo10176d());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: c */
    public final boolean mo9891c() {
        return (this.f13973a.mo10158t() || this.f13974b == this.f13975c) ? false : this.f13973a.mo10179b(this.f13974b);
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: d */
    public final double mo9889d() {
        m10151a(1);
        return this.f13973a.mo10180b();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: d */
    public final void mo9888d(List<Long> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof ddu)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Long.valueOf(this.f13973a.mo10174e()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f13973a.mo10174e()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddu dduVar = (ddu) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dduVar.m10018a(this.f13973a.mo10174e());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dduVar.m10018a(this.f13973a.mo10174e());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: e */
    public final float mo9887e() {
        m10151a(5);
        return this.f13973a.mo10178c();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: e */
    public final void mo9886e(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10173f()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10173f()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10173f());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10173f());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: f */
    public final long mo9885f() {
        m10151a(0);
        return this.f13973a.mo10176d();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: f */
    public final void mo9884f(List<Long> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof ddu)) {
            switch (this.f13974b & 7) {
                case 1:
                    break;
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10147b(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Long.valueOf(this.f13973a.mo10171g()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                default:
                    throw zzeco.m6545f();
            }
            do {
                list.add(Long.valueOf(this.f13973a.mo10171g()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddu dduVar = (ddu) list;
        switch (this.f13974b & 7) {
            case 1:
                break;
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10147b(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dduVar.m10018a(this.f13973a.mo10171g());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            default:
                throw zzeco.m6545f();
        }
        do {
            dduVar.m10018a(this.f13973a.mo10171g());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: g */
    public final long mo9883g() {
        m10151a(0);
        return this.f13973a.mo10174e();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: g */
    public final void mo9882g(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10146c(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10170h()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzeco.m6545f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10170h()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10146c(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10170h());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            case 3:
            case 4:
            default:
                throw zzeco.m6545f();
            case 5:
                break;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10170h());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: h */
    public final int mo9881h() {
        m10151a(0);
        return this.f13973a.mo10173f();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: h */
    public final void mo9880h(List<Boolean> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dbg)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Boolean.valueOf(this.f13973a.mo10169i()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Boolean.valueOf(this.f13973a.mo10169i()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dbg dbgVar = (dbg) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dbgVar.m10227a(this.f13973a.mo10169i());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dbgVar.m10227a(this.f13973a.mo10169i());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: i */
    public final long mo9879i() {
        m10151a(1);
        return this.f13973a.mo10171g();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: i */
    public final void mo9878i(List<String> list) {
        m10148a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: j */
    public final int mo9877j() {
        m10151a(5);
        return this.f13973a.mo10170h();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: j */
    public final void mo9876j(List<String> list) {
        m10148a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: k */
    public final void mo9874k(List<dbi> list) {
        int mo10182a;
        if ((this.f13974b & 7) != 2) {
            throw zzeco.m6545f();
        }
        do {
            list.add(mo9869n());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a = this.f13973a.mo10182a();
        } while (mo10182a == this.f13974b);
        this.f13976d = mo10182a;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: k */
    public final boolean mo9875k() {
        m10151a(0);
        return this.f13973a.mo10169i();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: l */
    public final String mo9873l() {
        m10151a(2);
        return this.f13973a.mo10168j();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: l */
    public final void mo9872l(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10165m()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10165m()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10165m());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10165m());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: m */
    public final String mo9871m() {
        m10151a(2);
        return this.f13973a.mo10167k();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: m */
    public final void mo9870m(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10164n()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10164n()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10164n());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10164n());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: n */
    public final dbi mo9869n() {
        m10151a(2);
        return this.f13973a.mo10166l();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: n */
    public final void mo9868n(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10146c(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10163o()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                case 3:
                case 4:
                default:
                    throw zzeco.m6545f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10163o()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10146c(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10163o());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            case 3:
            case 4:
            default:
                throw zzeco.m6545f();
            case 5:
                break;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10163o());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: o */
    public final int mo9867o() {
        m10151a(0);
        return this.f13973a.mo10165m();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: o */
    public final void mo9866o(List<Long> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof ddu)) {
            switch (this.f13974b & 7) {
                case 1:
                    break;
                case 2:
                    int mo10165m = this.f13973a.mo10165m();
                    m10147b(mo10165m);
                    int mo10157u = this.f13973a.mo10157u();
                    do {
                        list.add(Long.valueOf(this.f13973a.mo10162p()));
                    } while (this.f13973a.mo10157u() < mo10165m + mo10157u);
                    return;
                default:
                    throw zzeco.m6545f();
            }
            do {
                list.add(Long.valueOf(this.f13973a.mo10162p()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddu dduVar = (ddu) list;
        switch (this.f13974b & 7) {
            case 1:
                break;
            case 2:
                int mo10165m2 = this.f13973a.mo10165m();
                m10147b(mo10165m2);
                int mo10157u2 = this.f13973a.mo10157u();
                do {
                    dduVar.m10018a(this.f13973a.mo10162p());
                } while (this.f13973a.mo10157u() < mo10165m2 + mo10157u2);
                return;
            default:
                throw zzeco.m6545f();
        }
        do {
            dduVar.m10018a(this.f13973a.mo10162p());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: p */
    public final int mo9865p() {
        m10151a(0);
        return this.f13973a.mo10164n();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: p */
    public final void mo9864p(List<Integer> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof dcx)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Integer.valueOf(this.f13973a.mo10161q()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f13973a.mo10161q()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        dcx dcxVar = (dcx) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dcxVar.mo10039d(this.f13973a.mo10161q());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dcxVar.mo10039d(this.f13973a.mo10161q());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: q */
    public final int mo9863q() {
        m10151a(5);
        return this.f13973a.mo10163o();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: q */
    public final void mo9862q(List<Long> list) {
        int mo10182a;
        int mo10182a2;
        if (!(list instanceof ddu)) {
            switch (this.f13974b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzeco.m6545f();
                case 2:
                    int mo10165m = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                    do {
                        list.add(Long.valueOf(this.f13973a.mo10160r()));
                    } while (this.f13973a.mo10157u() < mo10165m);
                    m10144d(mo10165m);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f13973a.mo10160r()));
                if (this.f13973a.mo10158t()) {
                    return;
                }
                mo10182a = this.f13973a.mo10182a();
            } while (mo10182a == this.f13974b);
            this.f13976d = mo10182a;
            return;
        }
        ddu dduVar = (ddu) list;
        switch (this.f13974b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzeco.m6545f();
            case 2:
                int mo10165m2 = this.f13973a.mo10165m() + this.f13973a.mo10157u();
                do {
                    dduVar.m10018a(this.f13973a.mo10160r());
                } while (this.f13973a.mo10157u() < mo10165m2);
                m10144d(mo10165m2);
                return;
        }
        do {
            dduVar.m10018a(this.f13973a.mo10160r());
            if (this.f13973a.mo10158t()) {
                return;
            }
            mo10182a2 = this.f13973a.mo10182a();
        } while (mo10182a2 == this.f13974b);
        this.f13976d = mo10182a2;
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: r */
    public final long mo9861r() {
        m10151a(1);
        return this.f13973a.mo10162p();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: s */
    public final int mo9860s() {
        m10151a(0);
        return this.f13973a.mo10161q();
    }

    @Override // com.google.android.gms.internal.ads.dex
    /* renamed from: t */
    public final long mo9859t() {
        m10151a(0);
        return this.f13973a.mo10160r();
    }
}
