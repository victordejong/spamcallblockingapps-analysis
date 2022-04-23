package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cor.class */
final class cor extends AdMetadataListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ekz f26173a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cop f26174b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cor(cop copVar, ekz ekzVar) {
        this.f26174b = copVar;
        this.f26173a = ekzVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        bhu bhuVar;
        bhuVar = this.f26174b.f26172d;
        if (bhuVar != null) {
            try {
                this.f26173a.a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
