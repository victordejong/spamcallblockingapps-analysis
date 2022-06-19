package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.je */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/je.class */
public final class C3243je {

    /* renamed from: a */
    private final Object f16800a = new Object();

    /* renamed from: b */
    private final Object f16801b = new Object();
    @GuardedBy("lockClient")

    /* renamed from: c */
    private C3252jn f16802c;
    @GuardedBy("lockService")

    /* renamed from: d */
    private C3252jn f16803d;

    /* renamed from: a */
    private static Context m7732a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context;
    }

    /* renamed from: a */
    public final C3252jn m7731a(Context context, C3647yd c3647yd) {
        C3252jn c3252jn;
        synchronized (this.f16801b) {
            if (this.f16803d == null) {
                this.f16803d = new C3252jn(m7732a(context), c3647yd, C2818av.f10407a.mo13599a());
            }
            c3252jn = this.f16803d;
        }
        return c3252jn;
    }

    /* renamed from: b */
    public final C3252jn m7730b(Context context, C3647yd c3647yd) {
        C3252jn c3252jn;
        synchronized (this.f16800a) {
            if (this.f16802c == null) {
                this.f16802c = new C3252jn(m7732a(context), c3647yd, (String) dyx.m8158e().m7876a(edi.f16341a));
            }
            c3252jn = this.f16802c;
        }
        return c3252jn;
    }
}
