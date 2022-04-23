package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqz.class */
public final class bqz implements arp, atb {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f24918a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static int f24919b;

    /* renamed from: c  reason: collision with root package name */
    private final zzf f24920c;

    /* renamed from: d  reason: collision with root package name */
    private final bre f24921d;

    public bqz(bre breVar, zzf zzfVar) {
        this.f24921d = breVar;
        this.f24920c = zzfVar;
    }

    private final void a(boolean z) {
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && !this.f24920c.zzzn() && b()) {
            this.f24921d.a(z);
            synchronized (f24918a) {
                f24919b++;
            }
        }
    }

    private static boolean b() {
        boolean z;
        synchronized (f24918a) {
            z = f24919b < ((Integer) ekb.e().a(aq.dN)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        a(true);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        a(false);
    }
}
