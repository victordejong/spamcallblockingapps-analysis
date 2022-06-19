package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.internal.ads.ia */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ia.class */
public final class C12626ia extends zzc<AbstractC12631if> {
    public C12626ia(Context context, Looper looper, AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b) {
        super(C12936tm.m14155a(context), looper, 166, abstractC12026a, abstractC12027b, null);
    }

    /* renamed from: a */
    public final AbstractC12631if m14600a() throws DeadObjectException {
        return (AbstractC12631if) super.getService();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return queryLocalInterface instanceof AbstractC12631if ? (AbstractC12631if) queryLocalInterface : new C12634ii(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.HTTP";
    }
}
