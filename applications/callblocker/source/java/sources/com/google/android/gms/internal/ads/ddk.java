package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddk.class */
public class ddk {

    /* renamed from: a */
    private static final dci f14113a = dci.m10138a();

    /* renamed from: b */
    private dbi f14114b;

    /* renamed from: c */
    private volatile deg f14115c;

    /* renamed from: d */
    private volatile dbi f14116d;

    /* renamed from: b */
    private final deg m10032b(deg degVar) {
        if (this.f14115c == null) {
            synchronized (this) {
                if (this.f14115c == null) {
                    try {
                        this.f14115c = degVar;
                        this.f14116d = dbi.f13932a;
                    } catch (zzeco e) {
                        this.f14115c = degVar;
                        this.f14116d = dbi.f13932a;
                    }
                }
            }
        }
        return this.f14115c;
    }

    /* renamed from: a */
    public final deg m10034a(deg degVar) {
        deg degVar2 = this.f14115c;
        this.f14114b = null;
        this.f14116d = null;
        this.f14115c = degVar;
        return degVar2;
    }

    /* renamed from: b */
    public final int m10033b() {
        return this.f14116d != null ? this.f14116d.mo9911b() : this.f14115c != null ? this.f14115c.mo9983q() : 0;
    }

    /* renamed from: c */
    public final dbi m10031c() {
        dbi dbiVar;
        if (this.f14116d != null) {
            dbiVar = this.f14116d;
        } else {
            synchronized (this) {
                if (this.f14116d != null) {
                    dbiVar = this.f14116d;
                } else {
                    if (this.f14115c == null) {
                        this.f14116d = dbi.f13932a;
                    } else {
                        this.f14116d = this.f14115c.mo9985k();
                    }
                    dbiVar = this.f14116d;
                }
            }
        }
        return dbiVar;
    }

    public boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            equals = true;
        } else if (!(obj instanceof ddk)) {
            equals = false;
        } else {
            ddk ddkVar = (ddk) obj;
            deg degVar = this.f14115c;
            deg degVar2 = ddkVar.f14115c;
            equals = (degVar == null && degVar2 == null) ? m10031c().equals(ddkVar.m10031c()) : (degVar == null || degVar2 == null) ? degVar != null ? degVar.equals(ddkVar.m10032b(degVar.mo9975w())) : m10032b(degVar2.mo9975w()).equals(degVar2) : degVar.equals(degVar2);
        }
        return equals;
    }

    public int hashCode() {
        return 1;
    }
}
