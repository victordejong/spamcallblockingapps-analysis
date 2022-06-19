package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqz.class */
public final class bqz implements arp, atb {

    /* renamed from: a */
    private static final Object f44521a = new Object();

    /* renamed from: b */
    private static int f44522b;

    /* renamed from: c */
    private final zzf f44523c;

    /* renamed from: d */
    private final bre f44524d;

    public bqz(bre breVar, zzf zzfVar) {
        this.f44524d = breVar;
        this.f44523c = zzfVar;
    }

    /* renamed from: a */
    private final void m17660a(boolean z) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() && !this.f44523c.zzzn() && m17659b()) {
            this.f44524d.m17645a(z);
            synchronized (f44521a) {
                f44522b++;
            }
        }
    }

    /* renamed from: b */
    private static boolean m17659b() {
        boolean z;
        synchronized (f44521a) {
            z = f44522b < ((Integer) ekb.m14831e().m18571a(C12187aq.f42810dN)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        m17660a(true);
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        m17660a(false);
    }
}
