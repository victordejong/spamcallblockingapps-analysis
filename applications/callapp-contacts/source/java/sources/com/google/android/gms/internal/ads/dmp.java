package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmp.class */
public final class dmp implements dpj {

    /* renamed from: a */
    private final dmi f47239a;

    /* renamed from: b */
    private int f47240b;

    /* renamed from: c */
    private int f47241c;

    /* renamed from: d */
    private int f47242d = 0;

    private dmp(dmi dmiVar) {
        dmi dmiVar2 = (dmi) dnj.m16314a(dmiVar, "input");
        this.f47239a = dmiVar2;
        dmiVar2.f47219d = this;
    }

    /* renamed from: a */
    public static dmp m16407a(dmi dmiVar) {
        return dmiVar.f47219d != null ? dmiVar.f47219d : new dmp(dmiVar);
    }

    /* renamed from: a */
    private final Object m16406a(dqx dqxVar, Class<?> cls, dmt dmtVar) throws IOException {
        switch (dmo.f47238a[dqxVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo16168k());
            case 2:
                return mo16162n();
            case 3:
                return Double.valueOf(mo16182d());
            case 4:
                return Integer.valueOf(mo16158p());
            case 5:
                return Integer.valueOf(mo16170j());
            case 6:
                return Long.valueOf(mo16172i());
            case 7:
                return Float.valueOf(mo16180e());
            case 8:
                return Integer.valueOf(mo16174h());
            case 9:
                return Long.valueOf(mo16176g());
            case 10:
                m16408a(2);
                return m16402c(dpi.m16196a().m16195a((Class) cls), dmtVar);
            case 11:
                return Integer.valueOf(mo16156q());
            case 12:
                return Long.valueOf(mo16154r());
            case 13:
                return Integer.valueOf(mo16153s());
            case 14:
                return Long.valueOf(mo16152t());
            case 15:
                return mo16164m();
            case 16:
                return Integer.valueOf(mo16160o());
            case 17:
                return Long.valueOf(mo16178f());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: a */
    private final void m16408a(int i) throws IOException {
        if ((this.f47240b & 7) == i) {
            return;
        }
        throw zzenn.m13630f();
    }

    /* renamed from: a */
    private final void m16405a(List<String> list, boolean z) throws IOException {
        int mo16444a;
        int mo16444a2;
        if ((this.f47240b & 7) == 2) {
            if (!(list instanceof dnz) || z) {
                do {
                    list.add(z ? mo16164m() : mo16166l());
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            }
            dnz dnzVar = (dnz) list;
            do {
                dnzVar.mo15999a(mo16162n());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
            return;
        }
        throw zzenn.m13630f();
    }

    /* renamed from: b */
    private static void m16404b(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw zzenn.m13628h();
    }

    /* renamed from: c */
    private final <T> T m16402c(dpp<T> dppVar, dmt dmtVar) throws IOException {
        int mo16422m = this.f47239a.mo16422m();
        if (this.f47239a.f47216a < this.f47239a.f47217b) {
            int mo16439c = this.f47239a.mo16439c(mo16422m);
            T mo16124a = dppVar.mo16124a();
            this.f47239a.f47216a++;
            dppVar.mo16122a(mo16124a, this, dmtVar);
            dppVar.mo16116c(mo16124a);
            this.f47239a.mo16443a(0);
            this.f47239a.f47216a--;
            this.f47239a.mo16437d(mo16439c);
            return mo16124a;
        }
        throw new zzenn("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: c */
    private static void m16403c(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw zzenn.m13628h();
    }

    /* renamed from: d */
    private final <T> T m16400d(dpp<T> dppVar, dmt dmtVar) throws IOException {
        int i = this.f47241c;
        this.f47241c = ((this.f47240b >>> 3) << 3) | 4;
        try {
            T mo16124a = dppVar.mo16124a();
            dppVar.mo16122a(mo16124a, this, dmtVar);
            dppVar.mo16116c(mo16124a);
            if (this.f47240b == this.f47241c) {
                return mo16124a;
            }
            throw zzenn.m13628h();
        } finally {
            this.f47241c = i;
        }
    }

    /* renamed from: d */
    private final void m16401d(int i) throws IOException {
        if (this.f47239a.mo16414u() == i) {
            return;
        }
        throw zzenn.m13635a();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: a */
    public final int mo16193a() throws IOException {
        int i = this.f47242d;
        if (i != 0) {
            this.f47240b = i;
            this.f47242d = 0;
        } else {
            this.f47240b = this.f47239a.mo16444a();
        }
        int i2 = this.f47240b;
        if (i2 == 0 || i2 == this.f47241c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: a */
    public final <T> T mo16192a(dpp<T> dppVar, dmt dmtVar) throws IOException {
        m16408a(2);
        return (T) m16402c(dppVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: a */
    public final void mo16191a(List<Double> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dmr)) {
            int i = this.f47240b & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.f47239a.mo16442b()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16422m = this.f47239a.mo16422m();
                m16404b(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Double.valueOf(this.f47239a.mo16442b()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            }
        }
        dmr dmrVar = (dmr) list;
        int i2 = this.f47240b & 7;
        if (i2 == 1) {
            do {
                dmrVar.m16399a(this.f47239a.mo16442b());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16422m2 = this.f47239a.mo16422m();
            m16404b(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dmrVar.m16399a(this.f47239a.mo16442b());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: a */
    public final <T> void mo16190a(List<T> list, dpp<T> dppVar, dmt dmtVar) throws IOException {
        int mo16444a;
        int i = this.f47240b;
        if ((i & 7) == 2) {
            do {
                list.add(m16402c(dppVar, dmtVar));
                if (this.f47239a.mo16415t() || this.f47242d != 0) {
                    return;
                }
                mo16444a = this.f47239a.mo16444a();
            } while (mo16444a == i);
            this.f47242d = mo16444a;
            return;
        }
        throw zzenn.m13630f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: a */
    public final <K, V> void mo16189a(Map<K, V> map, dok<K, V> dokVar, dmt dmtVar) throws IOException {
        m16408a(2);
        int mo16439c = this.f47239a.mo16439c(this.f47239a.mo16422m());
        K k = dokVar.f47320b;
        V v = dokVar.f47322d;
        while (true) {
            try {
                int mo16193a = mo16193a();
                if (mo16193a == Integer.MAX_VALUE || this.f47239a.mo16415t()) {
                    break;
                } else if (mo16193a == 1) {
                    k = m16406a(dokVar.f47319a, (Class<?>) null, (dmt) null);
                } else if (mo16193a != 2) {
                    try {
                        if (!mo16184c()) {
                            throw new zzenn("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzenm e) {
                        if (!mo16184c()) {
                            throw new zzenn("Unable to parse map entry.");
                        }
                    }
                } else {
                    v = m16406a(dokVar.f47321c, dokVar.f47322d.getClass(), dmtVar);
                }
            } finally {
                this.f47239a.mo16437d(mo16439c);
            }
        }
        map.put(k, v);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: b */
    public final int mo16188b() {
        return this.f47240b;
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: b */
    public final <T> T mo16187b(dpp<T> dppVar, dmt dmtVar) throws IOException {
        m16408a(3);
        return (T) m16400d(dppVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: b */
    public final void mo16186b(List<Float> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnf)) {
            int i = this.f47240b & 7;
            if (i == 2) {
                int mo16422m = this.f47239a.mo16422m();
                m16403c(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Float.valueOf(this.f47239a.mo16440c()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            } else if (i != 5) {
                throw zzenn.m13630f();
            } else {
                do {
                    list.add(Float.valueOf(this.f47239a.mo16440c()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            }
        }
        dnf dnfVar = (dnf) list;
        int i2 = this.f47240b & 7;
        if (i2 == 2) {
            int mo16422m2 = this.f47239a.mo16422m();
            m16403c(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dnfVar.m16355a(this.f47239a.mo16440c());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        } else if (i2 != 5) {
            throw zzenn.m13630f();
        } else {
            do {
                dnfVar.m16355a(this.f47239a.mo16440c());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: b */
    public final <T> void mo16185b(List<T> list, dpp<T> dppVar, dmt dmtVar) throws IOException {
        int mo16444a;
        int i = this.f47240b;
        if ((i & 7) == 3) {
            do {
                list.add(m16400d(dppVar, dmtVar));
                if (this.f47239a.mo16415t() || this.f47242d != 0) {
                    return;
                }
                mo16444a = this.f47239a.mo16444a();
            } while (mo16444a == i);
            this.f47242d = mo16444a;
            return;
        }
        throw zzenn.m13630f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: c */
    public final void mo16183c(List<Long> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof doh)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f47239a.mo16438d()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Long.valueOf(this.f47239a.mo16438d()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        doh dohVar = (doh) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dohVar.m16286a(this.f47239a.mo16438d());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dohVar.m16286a(this.f47239a.mo16438d());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: c */
    public final boolean mo16184c() throws IOException {
        int i;
        if (this.f47239a.mo16415t() || (i = this.f47240b) == this.f47241c) {
            return false;
        }
        return this.f47239a.mo16441b(i);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: d */
    public final double mo16182d() throws IOException {
        m16408a(1);
        return this.f47239a.mo16442b();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: d */
    public final void mo16181d(List<Long> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof doh)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f47239a.mo16436e()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Long.valueOf(this.f47239a.mo16436e()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        doh dohVar = (doh) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dohVar.m16286a(this.f47239a.mo16436e());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dohVar.m16286a(this.f47239a.mo16436e());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: e */
    public final float mo16180e() throws IOException {
        m16408a(5);
        return this.f47239a.mo16440c();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: e */
    public final void mo16179e(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16435f()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16435f()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dnkVar.mo16304d(this.f47239a.mo16435f());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dnkVar.mo16304d(this.f47239a.mo16435f());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: f */
    public final long mo16178f() throws IOException {
        m16408a(0);
        return this.f47239a.mo16438d();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: f */
    public final void mo16177f(List<Long> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof doh)) {
            int i = this.f47240b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.f47239a.mo16433g()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16422m = this.f47239a.mo16422m();
                m16404b(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Long.valueOf(this.f47239a.mo16433g()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            }
        }
        doh dohVar = (doh) list;
        int i2 = this.f47240b & 7;
        if (i2 == 1) {
            do {
                dohVar.m16286a(this.f47239a.mo16433g());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16422m2 = this.f47239a.mo16422m();
            m16404b(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dohVar.m16286a(this.f47239a.mo16433g());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: g */
    public final long mo16176g() throws IOException {
        m16408a(0);
        return this.f47239a.mo16436e();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: g */
    public final void mo16175g(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 2) {
                int mo16422m = this.f47239a.mo16422m();
                m16403c(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16431h()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            } else if (i != 5) {
                throw zzenn.m13630f();
            } else {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16431h()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 2) {
            int mo16422m2 = this.f47239a.mo16422m();
            m16403c(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dnkVar.mo16304d(this.f47239a.mo16431h());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        } else if (i2 != 5) {
            throw zzenn.m13630f();
        } else {
            do {
                dnkVar.mo16304d(this.f47239a.mo16431h());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: h */
    public final int mo16174h() throws IOException {
        m16408a(0);
        return this.f47239a.mo16435f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: h */
    public final void mo16173h(List<Boolean> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dlu)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.f47239a.mo16429i()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Boolean.valueOf(this.f47239a.mo16429i()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        dlu dluVar = (dlu) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dluVar.m16483a(this.f47239a.mo16429i());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dluVar.m16483a(this.f47239a.mo16429i());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: i */
    public final long mo16172i() throws IOException {
        m16408a(1);
        return this.f47239a.mo16433g();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: i */
    public final void mo16171i(List<String> list) throws IOException {
        m16405a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: j */
    public final int mo16170j() throws IOException {
        m16408a(5);
        return this.f47239a.mo16431h();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: j */
    public final void mo16169j(List<String> list) throws IOException {
        m16405a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: k */
    public final void mo16167k(List<dlw> list) throws IOException {
        int mo16444a;
        if ((this.f47240b & 7) == 2) {
            do {
                list.add(mo16162n());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a = this.f47239a.mo16444a();
            } while (mo16444a == this.f47240b);
            this.f47242d = mo16444a;
            return;
        }
        throw zzenn.m13630f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: k */
    public final boolean mo16168k() throws IOException {
        m16408a(0);
        return this.f47239a.mo16429i();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: l */
    public final String mo16166l() throws IOException {
        m16408a(2);
        return this.f47239a.mo16427j();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: l */
    public final void mo16165l(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16422m()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16422m()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dnkVar.mo16304d(this.f47239a.mo16422m());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dnkVar.mo16304d(this.f47239a.mo16422m());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: m */
    public final String mo16164m() throws IOException {
        m16408a(2);
        return this.f47239a.mo16425k();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: m */
    public final void mo16163m(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16421n()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16421n()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dnkVar.mo16304d(this.f47239a.mo16421n());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dnkVar.mo16304d(this.f47239a.mo16421n());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: n */
    public final dlw mo16162n() throws IOException {
        m16408a(2);
        return this.f47239a.mo16423l();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: n */
    public final void mo16161n(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 2) {
                int mo16422m = this.f47239a.mo16422m();
                m16403c(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16420o()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            } else if (i != 5) {
                throw zzenn.m13630f();
            } else {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16420o()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 2) {
            int mo16422m2 = this.f47239a.mo16422m();
            m16403c(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dnkVar.mo16304d(this.f47239a.mo16420o());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        } else if (i2 != 5) {
            throw zzenn.m13630f();
        } else {
            do {
                dnkVar.mo16304d(this.f47239a.mo16420o());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: o */
    public final int mo16160o() throws IOException {
        m16408a(0);
        return this.f47239a.mo16422m();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: o */
    public final void mo16159o(List<Long> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof doh)) {
            int i = this.f47240b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.f47239a.mo16419p()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16422m = this.f47239a.mo16422m();
                m16404b(mo16422m);
                int mo16414u = this.f47239a.mo16414u();
                do {
                    list.add(Long.valueOf(this.f47239a.mo16419p()));
                } while (this.f47239a.mo16414u() < mo16414u + mo16422m);
                return;
            }
        }
        doh dohVar = (doh) list;
        int i2 = this.f47240b & 7;
        if (i2 == 1) {
            do {
                dohVar.m16286a(this.f47239a.mo16419p());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16422m2 = this.f47239a.mo16422m();
            m16404b(mo16422m2);
            int mo16414u2 = this.f47239a.mo16414u();
            do {
                dohVar.m16286a(this.f47239a.mo16419p());
            } while (this.f47239a.mo16414u() < mo16414u2 + mo16422m2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: p */
    public final int mo16158p() throws IOException {
        m16408a(0);
        return this.f47239a.mo16421n();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: p */
    public final void mo16157p(List<Integer> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof dnk)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16418q()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Integer.valueOf(this.f47239a.mo16418q()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        dnk dnkVar = (dnk) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dnkVar.mo16304d(this.f47239a.mo16418q());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dnkVar.mo16304d(this.f47239a.mo16418q());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: q */
    public final int mo16156q() throws IOException {
        m16408a(5);
        return this.f47239a.mo16420o();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: q */
    public final void mo16155q(List<Long> list) throws IOException {
        int mo16444a;
        int mo16444a2;
        if (!(list instanceof doh)) {
            int i = this.f47240b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f47239a.mo16417r()));
                    if (this.f47239a.mo16415t()) {
                        return;
                    }
                    mo16444a = this.f47239a.mo16444a();
                } while (mo16444a == this.f47240b);
                this.f47242d = mo16444a;
                return;
            } else if (i != 2) {
                throw zzenn.m13630f();
            } else {
                int mo16414u = this.f47239a.mo16414u() + this.f47239a.mo16422m();
                do {
                    list.add(Long.valueOf(this.f47239a.mo16417r()));
                } while (this.f47239a.mo16414u() < mo16414u);
                m16401d(mo16414u);
                return;
            }
        }
        doh dohVar = (doh) list;
        int i2 = this.f47240b & 7;
        if (i2 == 0) {
            do {
                dohVar.m16286a(this.f47239a.mo16417r());
                if (this.f47239a.mo16415t()) {
                    return;
                }
                mo16444a2 = this.f47239a.mo16444a();
            } while (mo16444a2 == this.f47240b);
            this.f47242d = mo16444a2;
        } else if (i2 != 2) {
            throw zzenn.m13630f();
        } else {
            int mo16414u2 = this.f47239a.mo16414u() + this.f47239a.mo16422m();
            do {
                dohVar.m16286a(this.f47239a.mo16417r());
            } while (this.f47239a.mo16414u() < mo16414u2);
            m16401d(mo16414u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: r */
    public final long mo16154r() throws IOException {
        m16408a(1);
        return this.f47239a.mo16419p();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: s */
    public final int mo16153s() throws IOException {
        m16408a(0);
        return this.f47239a.mo16418q();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    /* renamed from: t */
    public final long mo16152t() throws IOException {
        m16408a(0);
        return this.f47239a.mo16417r();
    }
}
