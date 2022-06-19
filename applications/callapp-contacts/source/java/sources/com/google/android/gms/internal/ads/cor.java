package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cor.class */
final class cor extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ ekz f46211a;

    /* renamed from: b */
    private final /* synthetic */ cop f46212b;

    public cor(cop copVar, ekz ekzVar) {
        this.f46212b = copVar;
        this.f46211a = ekzVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        bhu bhuVar;
        bhuVar = this.f46212b.f46209d;
        if (bhuVar != null) {
            try {
                this.f46211a.mo14811a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
