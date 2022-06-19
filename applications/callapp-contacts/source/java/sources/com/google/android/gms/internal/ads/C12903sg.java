package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.internal.ads.sg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sg.class */
public final class C12903sg extends zzc<AbstractC12906sj> {
    public C12903sg(Context context, Looper looper, AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b) {
        super(C12936tm.m14155a(context), looper, 8, abstractC12026a, abstractC12027b, null);
    }

    /* renamed from: a */
    public final AbstractC12906sj m14195a() throws DeadObjectException {
        return (AbstractC12906sj) super.getService();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return queryLocalInterface instanceof AbstractC12906sj ? (AbstractC12906sj) queryLocalInterface : new C12908sl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }
}
