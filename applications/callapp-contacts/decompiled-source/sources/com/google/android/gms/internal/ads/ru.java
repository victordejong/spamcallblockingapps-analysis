package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ru.class */
public class ru {

    /* renamed from: d  reason: collision with root package name */
    private static xo f28357d;

    /* renamed from: a  reason: collision with root package name */
    public final Context f28358a;

    /* renamed from: b  reason: collision with root package name */
    public final AdFormat f28359b;

    /* renamed from: c  reason: collision with root package name */
    public final emr f28360c;

    public ru(Context context, AdFormat adFormat, emr emrVar) {
        this.f28358a = context;
        this.f28359b = adFormat;
        this.f28360c = emrVar;
    }

    public static xo a(Context context) {
        xo xoVar;
        synchronized (ru.class) {
            try {
                if (f28357d == null) {
                    f28357d = new ejm(ekb.b(), context, new mj()).a(context, false);
                }
                xoVar = f28357d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xoVar;
    }
}
