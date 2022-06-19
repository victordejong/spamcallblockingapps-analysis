package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxn.class */
final /* synthetic */ class zzaxn implements zzaxs {
    static final zzaxs zzebl = new zzaxn();

    private zzaxn() {
    }

    @Override // com.google.android.gms.internal.ads.zzaxs
    public final Object zza(zzbfu zzbfuVar) {
        String currentScreenName = zzbfuVar.getCurrentScreenName();
        if (currentScreenName != null) {
            return currentScreenName;
        }
        String currentScreenClass = zzbfuVar.getCurrentScreenClass();
        return currentScreenClass != null ? currentScreenClass : "";
    }
}
