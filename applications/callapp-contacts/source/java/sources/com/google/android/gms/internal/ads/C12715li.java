package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.li */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/li.class */
public final class C12715li {

    /* renamed from: a */
    private final Object f49467a = new Object();

    /* renamed from: b */
    private final Object f49468b = new Object();

    /* renamed from: c */
    private C12720ln f49469c;

    /* renamed from: d */
    private C12720ln f49470d;

    /* renamed from: a */
    private static Context m14529a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final C12720ln m14528a(Context context, zzbar zzbarVar) {
        C12720ln c12720ln;
        synchronized (this.f49468b) {
            if (this.f49470d == null) {
                this.f49470d = new C12720ln(m14529a(context), zzbarVar, C12293cx.f46718a.mo17481a());
            }
            c12720ln = this.f49470d;
        }
        return c12720ln;
    }

    /* renamed from: b */
    public final C12720ln m14527b(Context context, zzbar zzbarVar) {
        C12720ln c12720ln;
        synchronized (this.f49467a) {
            if (this.f49469c == null) {
                this.f49469c = new C12720ln(m14529a(context), zzbarVar, (String) ekb.m14831e().m18571a(C12187aq.f42637a));
            }
            c12720ln = this.f49469c;
        }
        return c12720ln;
    }
}
