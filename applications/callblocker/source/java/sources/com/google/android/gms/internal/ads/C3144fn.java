package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC2300b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* renamed from: com.google.android.gms.internal.ads.fn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fn.class */
public final class C3144fn extends AbstractC2300b<AbstractC3149fs> {
    public C3144fn(Context context, Looper looper, AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b) {
        super(C3446qs.m7295b(context), looper, 166, abstractC2624a, abstractC2625b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c3152fv;
        if (iBinder == null) {
            c3152fv = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
            c3152fv = queryLocalInterface instanceof AbstractC3149fs ? (AbstractC3149fs) queryLocalInterface : new C3152fv(iBinder);
        }
        return c3152fv;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    /* renamed from: c */
    public final AbstractC3149fs m7825c() {
        return (AbstractC3149fs) super.m14067v();
    }
}
