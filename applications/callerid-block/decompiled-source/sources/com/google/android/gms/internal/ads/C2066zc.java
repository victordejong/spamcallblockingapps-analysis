package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.zc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zc.class */
public final class C2066zc {

    /* renamed from: a */
    private final Object f9330a = new Object();

    /* renamed from: b */
    private final Object f9331b = new Object();
    @GuardedBy("lockClient")

    /* renamed from: c */
    private C1801jd f9332c;
    @GuardedBy("lockService")

    /* renamed from: d */
    private C1801jd f9333d;

    /* renamed from: c */
    private static final Context m4651c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final C1801jd m4653a(Context context, zzbbq zzbbqVar) {
        C1801jd jdVar;
        synchronized (this.f9331b) {
            if (this.f9333d == null) {
                this.f9333d = new C1801jd(m4651c(context), zzbbqVar, C1780i5.f6796a.m6222e());
            }
            jdVar = this.f9333d;
        }
        return jdVar;
    }

    /* renamed from: b */
    public final C1801jd m4652b(Context context, zzbbq zzbbqVar) {
        C1801jd jdVar;
        synchronized (this.f9330a) {
            if (this.f9332c == null) {
                this.f9332c = new C1801jd(m4651c(context), zzbbqVar, (String) C1674c.m7906c().m6878b(C1842m3.f7370a));
            }
            jdVar = this.f9332c;
        }
        return jdVar;
    }
}
