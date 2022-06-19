package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* renamed from: com.google.android.gms.internal.ads.com */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/com.class */
final class C12280com extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ emc f46199a;

    /* renamed from: b */
    private final /* synthetic */ coj f46200b;

    public C12280com(coj cojVar, emc emcVar) {
        this.f46200b = cojVar;
        this.f46199a = emcVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        bhu bhuVar;
        bhuVar = this.f46200b.f46189f;
        if (bhuVar != null) {
            try {
                this.f46199a.mo14186a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
