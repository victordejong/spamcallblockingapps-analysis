package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.AbstractC12025d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwh.class */
public final class cwh extends zzc<cwm> {

    /* renamed from: a */
    private final int f46665a;

    public cwh(Context context, Looper looper, AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b, int i) {
        super(context, looper, 116, abstractC12026a, abstractC12027b, null);
        this.f46665a = i;
    }

    /* renamed from: a */
    public final cwm m17131a() throws DeadObjectException {
        return (cwm) super.getService();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return queryLocalInterface instanceof cwm ? (cwm) queryLocalInterface : new cwl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return this.f46665a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.gass.START";
    }
}
