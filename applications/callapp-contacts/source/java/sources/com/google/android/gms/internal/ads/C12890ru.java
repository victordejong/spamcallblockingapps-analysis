package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
/* renamed from: com.google.android.gms.internal.ads.ru */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ru.class */
public class C12890ru {

    /* renamed from: d */
    private static AbstractC13048xo f49764d;

    /* renamed from: a */
    public final Context f49765a;

    /* renamed from: b */
    public final AdFormat f49766b;

    /* renamed from: c */
    public final emr f49767c;

    public C12890ru(Context context, AdFormat adFormat, emr emrVar) {
        this.f49765a = context;
        this.f49766b = adFormat;
        this.f49767c = emrVar;
    }

    /* renamed from: a */
    public static AbstractC13048xo m14206a(Context context) {
        AbstractC13048xo abstractC13048xo;
        synchronized (C12890ru.class) {
            try {
                if (f49764d == null) {
                    f49764d = new ejm(ekb.m14834b(), context, new BinderC12743mj()).m14843a(context, false);
                }
                abstractC13048xo = f49764d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC13048xo;
    }
}
