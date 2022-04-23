package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsa.class */
public final class zzcsa implements zzbui, zzbvs {

    /* renamed from: b */
    public static final Object f26449b = new Object();

    /* renamed from: c */
    public static int f26450c;

    /* renamed from: a */
    public final zzcsf f26451a;

    public zzcsa(zzcsf zzcsfVar) {
        this.f26451a = zzcsfVar;
    }

    /* renamed from: a */
    public static boolean m13901a() {
        boolean z;
        synchronized (f26449b) {
            z = f26450c < ((Integer) zzwm.m11166e().m16921a(zzabb.f23836j3)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        m13900a(false);
    }

    /* renamed from: a */
    public final void m13900a(boolean z) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue() && m13901a()) {
            this.f26451a.m13886a(z);
            synchronized (f26449b) {
                f26450c++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        m13900a(true);
    }
}
