package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC2300b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvv.class */
public final class dvv extends AbstractC2300b<dvz> {
    public dvv(Context context, Looper looper, AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b) {
        super(C3446qs.m7295b(context), looper, 123, abstractC2624a, abstractC2625b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface dvyVar;
        if (iBinder == null) {
            dvyVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
            dvyVar = queryLocalInterface instanceof dvz ? (dvz) queryLocalInterface : new dvy(iBinder);
        }
        return dvyVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    /* renamed from: c */
    public final dvz m8484c() {
        return (dvz) super.m14067v();
    }
}
