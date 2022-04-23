package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/com.class */
final class com extends AdMetadataListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ emc f26163a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ coj f26164b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public com(coj cojVar, emc emcVar) {
        this.f26164b = cojVar;
        this.f26163a = emcVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        bhu bhuVar;
        bhuVar = this.f26164b.f;
        if (bhuVar != null) {
            try {
                this.f26163a.a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
