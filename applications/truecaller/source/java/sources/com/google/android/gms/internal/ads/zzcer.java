package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcer.class */
public final /* synthetic */ class zzcer implements zzcey {
    public static final zzcey zza = new zzcer();

    private zzcer() {
    }

    @Override // com.google.android.gms.internal.ads.zzcey
    public final Object zza(zzcod zzcodVar) {
        String zzr = zzcodVar.zzr();
        String str = zzr;
        if (zzr == null) {
            String zzs = zzcodVar.zzs();
            str = zzs;
            if (zzs == null) {
                return "";
            }
        }
        return str;
    }
}
