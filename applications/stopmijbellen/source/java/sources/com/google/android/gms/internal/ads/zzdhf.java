package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhf.class */
public final class zzdhf implements Runnable {
    private final WeakReference<zzdhg> zza;

    public /* synthetic */ zzdhf(zzdhg zzdhgVar, zzdhe zzdheVar) {
        this.zza = new WeakReference<>(zzdhgVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdhg zzdhgVar = this.zza.get();
        if (zzdhgVar != null) {
            zzdhgVar.zzo(zzdhd.zza);
        }
    }
}
