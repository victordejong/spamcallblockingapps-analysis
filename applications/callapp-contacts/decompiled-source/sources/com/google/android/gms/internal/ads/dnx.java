package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnx.class */
public class dnx {

    /* renamed from: d  reason: collision with root package name */
    private static final dmt f27011d = dmt.a();

    /* renamed from: a  reason: collision with root package name */
    dlw f27012a;

    /* renamed from: b  reason: collision with root package name */
    volatile dot f27013b;

    /* renamed from: c  reason: collision with root package name */
    volatile dlw f27014c;

    private final dot a(dot dotVar) {
        if (this.f27013b == null) {
            synchronized (this) {
                if (this.f27013b == null) {
                    try {
                        this.f27013b = dotVar;
                        this.f27014c = dlw.f26941a;
                    } catch (zzenn e) {
                        this.f27013b = dotVar;
                        this.f27014c = dlw.f26941a;
                    }
                }
            }
        }
        return this.f27013b;
    }

    public final int b() {
        if (this.f27014c != null) {
            return this.f27014c.b();
        }
        if (this.f27013b != null) {
            return this.f27013b.l();
        }
        return 0;
    }

    public final dlw c() {
        if (this.f27014c != null) {
            return this.f27014c;
        }
        synchronized (this) {
            if (this.f27014c != null) {
                return this.f27014c;
            }
            if (this.f27013b == null) {
                this.f27014c = dlw.f26941a;
            } else {
                this.f27014c = this.f27013b.f();
            }
            return this.f27014c;
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
        dot dotVar = this.f27013b;
        dot dotVar2 = dnxVar.f27013b;
        return (dotVar == null && dotVar2 == null) ? c().equals(dnxVar.c()) : (dotVar == null || dotVar2 == null) ? dotVar != null ? dotVar.equals(dnxVar.a(dotVar.o())) : a(dotVar2.o()).equals(dotVar2) : dotVar.equals(dotVar2);
    }

    public int hashCode() {
        return 1;
    }
}
