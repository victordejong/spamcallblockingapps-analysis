package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clu.class */
final class clu implements dbi<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public clu(clt cltVar) {
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Void r3) {
        zzd.zzed("Notification of cache hit successful.");
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zzd.zzed("Notification of cache hit failed.");
    }
}
