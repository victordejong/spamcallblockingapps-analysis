package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bme.class */
public final class bme implements apv, arg {

    /* renamed from: a */
    private static final Object f11524a = new Object();

    /* renamed from: b */
    private static int f11525b = 0;

    /* renamed from: c */
    private final bmj f11526c;

    public bme(bmj bmjVar) {
        this.f11526c = bmjVar;
    }

    /* renamed from: b */
    private static void m11797b() {
        synchronized (f11524a) {
            f11525b++;
        }
    }

    /* renamed from: c */
    private static boolean m11796c() {
        boolean z;
        synchronized (f11524a) {
            z = f11525b < ((Integer) dyx.m8158e().m7876a(edi.f16528db)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16527da)).booleanValue() || !m11796c()) {
            return;
        }
        this.f11526c.m11781a(true);
        m11797b();
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16527da)).booleanValue() || !m11796c()) {
            return;
        }
        this.f11526c.m11781a(false);
        m11797b();
    }
}
