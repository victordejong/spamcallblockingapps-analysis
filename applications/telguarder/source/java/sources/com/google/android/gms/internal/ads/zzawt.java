package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawt.class */
final class zzawt implements zzdzl<Void> {
    private final /* synthetic */ zzdzw zzeal;

    public zzawt(zzawm zzawmVar, zzdzw zzdzwVar) {
        this.zzeal = zzdzwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Void r4) {
        List list;
        list = zzawm.zzdzv;
        list.remove(this.zzeal);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        List list;
        list = zzawm.zzdzv;
        list.remove(this.zzeal);
    }
}
