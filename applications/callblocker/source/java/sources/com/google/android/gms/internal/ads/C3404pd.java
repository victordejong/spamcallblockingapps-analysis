package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC2300b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* renamed from: com.google.android.gms.internal.ads.pd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pd.class */
public final class C3404pd extends AbstractC2300b<AbstractC3414pn> {
    public C3404pd(Context context, Looper looper, AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b) {
        super(C3446qs.m7295b(context), looper, 8, abstractC2624a, abstractC2625b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c3416pp;
        if (iBinder == null) {
            c3416pp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            c3416pp = queryLocalInterface instanceof AbstractC3414pn ? (AbstractC3414pn) queryLocalInterface : new C3416pp(iBinder);
        }
        return c3416pp;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.ads.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    /* renamed from: c */
    public final AbstractC3414pn m7343c() {
        return (AbstractC3414pn) super.m14067v();
    }
}
