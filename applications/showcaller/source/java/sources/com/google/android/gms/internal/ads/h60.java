package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h60.class */
public final class h60 {

    /* renamed from: a */
    private final Object f23808a = new Object();

    /* renamed from: b */
    private final Object f23809b = new Object();

    /* renamed from: c */
    private r60 f23810c;

    /* renamed from: d */
    private r60 f23811d;

    /* renamed from: c */
    private static final Context m14746c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final r60 m14748a(Context context, zzcgz zzcgzVar) {
        r60 r60Var;
        synchronized (this.f23809b) {
            if (this.f23811d == null) {
                this.f23811d = new r60(m14746c(context), zzcgzVar, C6569hy.f24079b.m12799e());
            }
            r60Var = this.f23811d;
        }
        return r60Var;
    }

    /* renamed from: b */
    public final r60 m14747b(Context context, zzcgz zzcgzVar) {
        r60 r60Var;
        synchronized (this.f23808a) {
            if (this.f23810c == null) {
                this.f23810c = new r60(m14746c(context), zzcgzVar, (String) C7192yr.m8714c().m14263c(C6679kw.f25643a));
            }
            r60Var = this.f23810c;
        }
        return r60Var;
    }
}
