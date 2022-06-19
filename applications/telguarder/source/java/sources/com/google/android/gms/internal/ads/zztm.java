package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztm.class */
public final class zztm extends zzbaa<zztv> {
    private final /* synthetic */ zztn zzbvu;

    public zztm(zztn zztnVar) {
        this.zzbvu = zztnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaa, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.zzbvu.disconnect();
        return super.cancel(z);
    }
}
