package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztb.class */
public final class zztb implements zzrm {
    private final /* synthetic */ zzsz zzbvc;

    public zztb(zzsz zzszVar) {
        this.zzbvc = zzszVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        if (z) {
            this.zzbvc.connect();
        } else {
            this.zzbvc.disconnect();
        }
    }
}
