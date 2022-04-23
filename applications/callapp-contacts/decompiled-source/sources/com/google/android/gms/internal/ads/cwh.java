package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwh.class */
public final class cwh extends zzc<cwm> {

    /* renamed from: a  reason: collision with root package name */
    private final int f26496a;

    public cwh(Context context, Looper looper, d.a aVar, d.b bVar, int i) {
        super(context, looper, 116, aVar, bVar, null);
        this.f26496a = i;
    }

    public final cwm a() throws DeadObjectException {
        return (cwm) super.getService();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return queryLocalInterface instanceof cwm ? (cwm) queryLocalInterface : new cwl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return this.f26496a;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.gass.START";
    }
}
