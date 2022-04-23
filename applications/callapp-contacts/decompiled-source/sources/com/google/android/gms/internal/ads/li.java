package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/li.class */
public final class li {

    /* renamed from: a  reason: collision with root package name */
    private final Object f28150a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Object f28151b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private ln f28152c;

    /* renamed from: d  reason: collision with root package name */
    private ln f28153d;

    private static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final ln a(Context context, zzbar zzbarVar) {
        ln lnVar;
        synchronized (this.f28151b) {
            if (this.f28153d == null) {
                this.f28153d = new ln(a(context), zzbarVar, cx.f26527a.a());
            }
            lnVar = this.f28153d;
        }
        return lnVar;
    }

    public final ln b(Context context, zzbar zzbarVar) {
        ln lnVar;
        synchronized (this.f28150a) {
            if (this.f28152c == null) {
                this.f28152c = new ln(a(context), zzbarVar, (String) ekb.e().a(aq.f23740a));
            }
            lnVar = this.f28152c;
        }
        return lnVar;
    }
}
