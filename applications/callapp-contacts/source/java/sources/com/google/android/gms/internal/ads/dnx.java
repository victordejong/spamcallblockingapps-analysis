package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnx.class */
public class dnx {

    /* renamed from: d */
    private static final dmt f47297d = dmt.m16396a();

    /* renamed from: a */
    dlw f47298a;

    /* renamed from: b */
    volatile dot f47299b;

    /* renamed from: c */
    volatile dlw f47300c;

    /* renamed from: a */
    private final dot m16301a(dot dotVar) {
        if (this.f47299b == null) {
            synchronized (this) {
                if (this.f47299b == null) {
                    try {
                        this.f47299b = dotVar;
                        this.f47300c = dlw.f47199a;
                    } catch (zzenn e) {
                        this.f47299b = dotVar;
                        this.f47300c = dlw.f47199a;
                    }
                }
            }
        }
        return this.f47299b;
    }

    /* renamed from: b */
    public final int m16300b() {
        if (this.f47300c != null) {
            return this.f47300c.mo16138b();
        }
        if (this.f47299b == null) {
            return 0;
        }
        return this.f47299b.mo16255l();
    }

    /* renamed from: c */
    public final dlw m16299c() {
        if (this.f47300c != null) {
            return this.f47300c;
        }
        synchronized (this) {
            if (this.f47300c != null) {
                return this.f47300c;
            }
            if (this.f47299b == null) {
                this.f47300c = dlw.f47199a;
            } else {
                this.f47300c = this.f47299b.mo16257f();
            }
            return this.f47300c;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dnx)) {
            return false;
        }
        dnx dnxVar = (dnx) obj;
        dot dotVar = this.f47299b;
        dot dotVar2 = dnxVar.f47299b;
        return (dotVar == null && dotVar2 == null) ? m16299c().equals(dnxVar.m16299c()) : (dotVar == null || dotVar2 == null) ? dotVar != null ? dotVar.equals(dnxVar.m16301a(dotVar.mo16248o())) : m16301a(dotVar2.mo16248o()).equals(dotVar2) : dotVar.equals(dotVar2);
    }

    public int hashCode() {
        return 1;
    }
}
