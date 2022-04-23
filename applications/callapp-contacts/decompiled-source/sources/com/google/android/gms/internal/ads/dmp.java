package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmp.class */
public final class dmp implements dpj {

    /* renamed from: a  reason: collision with root package name */
    private final dmi f26961a;

    /* renamed from: b  reason: collision with root package name */
    private int f26962b;

    /* renamed from: c  reason: collision with root package name */
    private int f26963c;

    /* renamed from: d  reason: collision with root package name */
    private int f26964d = 0;

    private dmp(dmi dmiVar) {
        dmi dmiVar2 = (dmi) dnj.a(dmiVar, "input");
        this.f26961a = dmiVar2;
        dmiVar2.f26959d = this;
    }

    public static dmp a(dmi dmiVar) {
        return dmiVar.f26959d != null ? dmiVar.f26959d : new dmp(dmiVar);
    }

    private final Object a(dqx dqxVar, Class<?> cls, dmt dmtVar) throws IOException {
        switch (dmo.f26960a[dqxVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(k());
            case 2:
                return n();
            case 3:
                return Double.valueOf(d());
            case 4:
                return Integer.valueOf(p());
            case 5:
                return Integer.valueOf(j());
            case 6:
                return Long.valueOf(i());
            case 7:
                return Float.valueOf(e());
            case 8:
                return Integer.valueOf(h());
            case 9:
                return Long.valueOf(g());
            case 10:
                a(2);
                return c(dpi.a().a((Class) cls), dmtVar);
            case 11:
                return Integer.valueOf(q());
            case 12:
                return Long.valueOf(r());
            case 13:
                return Integer.valueOf(s());
            case 14:
                return Long.valueOf(t());
            case 15:
                return m();
            case 16:
                return Integer.valueOf(o());
            case 17:
                return Long.valueOf(f());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void a(int i) throws IOException {
        if ((this.f26962b & 7) != i) {
            throw zzenn.f();
        }
    }

    private final void a(List<String> list, boolean z) throws IOException {
        int a2;
        int a3;
        if ((this.f26962b & 7) != 2) {
            throw zzenn.f();
        } else if (!(list instanceof dnz) || z) {
            do {
                list.add(z ? m() : l());
                if (!this.f26961a.t()) {
                    a2 = this.f26961a.a();
                } else {
                    return;
                }
            } while (a2 == this.f26962b);
            this.f26964d = a2;
        } else {
            dnz dnzVar = (dnz) list;
            do {
                dnzVar.a(n());
                if (!this.f26961a.t()) {
                    a3 = this.f26961a.a();
                } else {
                    return;
                }
            } while (a3 == this.f26962b);
            this.f26964d = a3;
        }
    }

    private static void b(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzenn.h();
        }
    }

    private final <T> T c(dpp<T> dppVar, dmt dmtVar) throws IOException {
        int m = this.f26961a.m();
        if (this.f26961a.f26956a < this.f26961a.f26957b) {
            int c2 = this.f26961a.c(m);
            T a2 = dppVar.a();
            this.f26961a.f26956a++;
            dppVar.a(a2, this, dmtVar);
            dppVar.c(a2);
            this.f26961a.a(0);
            this.f26961a.f26956a--;
            this.f26961a.d(c2);
            return a2;
        }
        throw new zzenn("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private static void c(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzenn.h();
        }
    }

    private final <T> T d(dpp<T> dppVar, dmt dmtVar) throws IOException {
        int i = this.f26963c;
        this.f26963c = ((this.f26962b >>> 3) << 3) | 4;
        try {
            T a2 = dppVar.a();
            dppVar.a(a2, this, dmtVar);
            dppVar.c(a2);
            if (this.f26962b == this.f26963c) {
                return a2;
            }
            throw zzenn.h();
        } finally {
            this.f26963c = i;
        }
    }

    private final void d(int i) throws IOException {
        if (this.f26961a.u() != i) {
            throw zzenn.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int a() throws IOException {
        int i = this.f26964d;
        if (i != 0) {
            this.f26962b = i;
            this.f26964d = 0;
        } else {
            this.f26962b = this.f26961a.a();
        }
        int i2 = this.f26962b;
        if (i2 == 0 || i2 == this.f26963c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final <T> T a(dpp<T> dppVar, dmt dmtVar) throws IOException {
        a(2);
        return (T) c(dppVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void a(List<Double> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dmr) {
            dmr dmrVar = (dmr) list;
            int i = this.f26962b & 7;
            if (i == 1) {
                do {
                    dmrVar.a(this.f26961a.b());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int m = this.f26961a.m();
                b(m);
                int u = this.f26961a.u();
                do {
                    dmrVar.a(this.f26961a.b());
                } while (this.f26961a.u() < u + m);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f26961a.b()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int m2 = this.f26961a.m();
                b(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Double.valueOf(this.f26961a.b()));
                } while (this.f26961a.u() < u2 + m2);
            } else {
                throw zzenn.f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    public final <T> void a(List<T> list, dpp<T> dppVar, dmt dmtVar) throws IOException {
        int a2;
        int i = this.f26962b;
        if ((i & 7) == 2) {
            do {
                list.add(c(dppVar, dmtVar));
                if (!this.f26961a.t() && this.f26964d == 0) {
                    a2 = this.f26961a.a();
                } else {
                    return;
                }
            } while (a2 == i);
            this.f26964d = a2;
            return;
        }
        throw zzenn.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    public final <K, V> void a(Map<K, V> map, dok<K, V> dokVar, dmt dmtVar) throws IOException {
        a(2);
        int c2 = this.f26961a.c(this.f26961a.m());
        Object obj = dokVar.f27034b;
        Object obj2 = dokVar.f27036d;
        while (true) {
            try {
                int a2 = a();
                if (a2 == Integer.MAX_VALUE || this.f26961a.t()) {
                    break;
                } else if (a2 == 1) {
                    obj = a(dokVar.f27033a, (Class<?>) null, (dmt) null);
                } else if (a2 != 2) {
                    try {
                        if (!c()) {
                            throw new zzenn("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzenm e) {
                        if (!c()) {
                            throw new zzenn("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = a(dokVar.f27035c, dokVar.f27036d.getClass(), dmtVar);
                }
            } finally {
                this.f26961a.d(c2);
            }
        }
        map.put(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int b() {
        return this.f26962b;
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final <T> T b(dpp<T> dppVar, dmt dmtVar) throws IOException {
        a(3);
        return (T) d(dppVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void b(List<Float> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnf) {
            dnf dnfVar = (dnf) list;
            int i = this.f26962b & 7;
            if (i == 2) {
                int m = this.f26961a.m();
                c(m);
                int u = this.f26961a.u();
                do {
                    dnfVar.a(this.f26961a.c());
                } while (this.f26961a.u() < u + m);
            } else if (i == 5) {
                do {
                    dnfVar.a(this.f26961a.c());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 2) {
                int m2 = this.f26961a.m();
                c(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Float.valueOf(this.f26961a.c()));
                } while (this.f26961a.u() < u2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f26961a.c()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else {
                throw zzenn.f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpj
    public final <T> void b(List<T> list, dpp<T> dppVar, dmt dmtVar) throws IOException {
        int a2;
        int i = this.f26962b;
        if ((i & 7) == 3) {
            do {
                list.add(d(dppVar, dmtVar));
                if (!this.f26961a.t() && this.f26964d == 0) {
                    a2 = this.f26961a.a();
                } else {
                    return;
                }
            } while (a2 == i);
            this.f26964d = a2;
            return;
        }
        throw zzenn.f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void c(List<Long> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof doh) {
            doh dohVar = (doh) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dohVar.a(this.f26961a.d());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dohVar.a(this.f26961a.d());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f26961a.d()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Long.valueOf(this.f26961a.d()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final boolean c() throws IOException {
        int i;
        if (this.f26961a.t() || (i = this.f26962b) == this.f26963c) {
            return false;
        }
        return this.f26961a.b(i);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final double d() throws IOException {
        a(1);
        return this.f26961a.b();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void d(List<Long> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof doh) {
            doh dohVar = (doh) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dohVar.a(this.f26961a.e());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dohVar.a(this.f26961a.e());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f26961a.e()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Long.valueOf(this.f26961a.e()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final float e() throws IOException {
        a(5);
        return this.f26961a.c();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void e(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dnkVar.d(this.f26961a.f());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dnkVar.d(this.f26961a.f());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f26961a.f()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Integer.valueOf(this.f26961a.f()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final long f() throws IOException {
        a(0);
        return this.f26961a.d();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void f(List<Long> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof doh) {
            doh dohVar = (doh) list;
            int i = this.f26962b & 7;
            if (i == 1) {
                do {
                    dohVar.a(this.f26961a.g());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int m = this.f26961a.m();
                b(m);
                int u = this.f26961a.u();
                do {
                    dohVar.a(this.f26961a.g());
                } while (this.f26961a.u() < u + m);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f26961a.g()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int m2 = this.f26961a.m();
                b(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Long.valueOf(this.f26961a.g()));
                } while (this.f26961a.u() < u2 + m2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final long g() throws IOException {
        a(0);
        return this.f26961a.e();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void g(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 2) {
                int m = this.f26961a.m();
                c(m);
                int u = this.f26961a.u();
                do {
                    dnkVar.d(this.f26961a.h());
                } while (this.f26961a.u() < u + m);
            } else if (i == 5) {
                do {
                    dnkVar.d(this.f26961a.h());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 2) {
                int m2 = this.f26961a.m();
                c(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Integer.valueOf(this.f26961a.h()));
                } while (this.f26961a.u() < u2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f26961a.h()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int h() throws IOException {
        a(0);
        return this.f26961a.f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void h(List<Boolean> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dlu) {
            dlu dluVar = (dlu) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dluVar.a(this.f26961a.i());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dluVar.a(this.f26961a.i());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f26961a.i()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Boolean.valueOf(this.f26961a.i()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final long i() throws IOException {
        a(1);
        return this.f26961a.g();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void i(List<String> list) throws IOException {
        a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int j() throws IOException {
        a(5);
        return this.f26961a.h();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void j(List<String> list) throws IOException {
        a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void k(List<dlw> list) throws IOException {
        int a2;
        if ((this.f26962b & 7) == 2) {
            do {
                list.add(n());
                if (!this.f26961a.t()) {
                    a2 = this.f26961a.a();
                } else {
                    return;
                }
            } while (a2 == this.f26962b);
            this.f26964d = a2;
            return;
        }
        throw zzenn.f();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final boolean k() throws IOException {
        a(0);
        return this.f26961a.i();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final String l() throws IOException {
        a(2);
        return this.f26961a.j();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void l(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dnkVar.d(this.f26961a.m());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dnkVar.d(this.f26961a.m());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f26961a.m()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Integer.valueOf(this.f26961a.m()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final String m() throws IOException {
        a(2);
        return this.f26961a.k();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void m(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dnkVar.d(this.f26961a.n());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dnkVar.d(this.f26961a.n());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f26961a.n()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Integer.valueOf(this.f26961a.n()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final dlw n() throws IOException {
        a(2);
        return this.f26961a.l();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void n(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 2) {
                int m = this.f26961a.m();
                c(m);
                int u = this.f26961a.u();
                do {
                    dnkVar.d(this.f26961a.o());
                } while (this.f26961a.u() < u + m);
            } else if (i == 5) {
                do {
                    dnkVar.d(this.f26961a.o());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 2) {
                int m2 = this.f26961a.m();
                c(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Integer.valueOf(this.f26961a.o()));
                } while (this.f26961a.u() < u2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f26961a.o()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int o() throws IOException {
        a(0);
        return this.f26961a.m();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void o(List<Long> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof doh) {
            doh dohVar = (doh) list;
            int i = this.f26962b & 7;
            if (i == 1) {
                do {
                    dohVar.a(this.f26961a.p());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int m = this.f26961a.m();
                b(m);
                int u = this.f26961a.u();
                do {
                    dohVar.a(this.f26961a.p());
                } while (this.f26961a.u() < u + m);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f26961a.p()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int m2 = this.f26961a.m();
                b(m2);
                int u2 = this.f26961a.u();
                do {
                    list.add(Long.valueOf(this.f26961a.p()));
                } while (this.f26961a.u() < u2 + m2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int p() throws IOException {
        a(0);
        return this.f26961a.n();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void p(List<Integer> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof dnk) {
            dnk dnkVar = (dnk) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dnkVar.d(this.f26961a.q());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dnkVar.d(this.f26961a.q());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f26961a.q()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Integer.valueOf(this.f26961a.q()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int q() throws IOException {
        a(5);
        return this.f26961a.o();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final void q(List<Long> list) throws IOException {
        int a2;
        int a3;
        if (list instanceof doh) {
            doh dohVar = (doh) list;
            int i = this.f26962b & 7;
            if (i == 0) {
                do {
                    dohVar.a(this.f26961a.r());
                    if (!this.f26961a.t()) {
                        a3 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a3 == this.f26962b);
                this.f26964d = a3;
            } else if (i == 2) {
                int u = this.f26961a.u() + this.f26961a.m();
                do {
                    dohVar.a(this.f26961a.r());
                } while (this.f26961a.u() < u);
                d(u);
            } else {
                throw zzenn.f();
            }
        } else {
            int i2 = this.f26962b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f26961a.r()));
                    if (!this.f26961a.t()) {
                        a2 = this.f26961a.a();
                    } else {
                        return;
                    }
                } while (a2 == this.f26962b);
                this.f26964d = a2;
            } else if (i2 == 2) {
                int u2 = this.f26961a.u() + this.f26961a.m();
                do {
                    list.add(Long.valueOf(this.f26961a.r()));
                } while (this.f26961a.u() < u2);
                d(u2);
            } else {
                throw zzenn.f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final long r() throws IOException {
        a(1);
        return this.f26961a.p();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final int s() throws IOException {
        a(0);
        return this.f26961a.q();
    }

    @Override // com.google.android.gms.internal.ads.dpj
    public final long t() throws IOException {
        a(0);
        return this.f26961a.r();
    }
}
