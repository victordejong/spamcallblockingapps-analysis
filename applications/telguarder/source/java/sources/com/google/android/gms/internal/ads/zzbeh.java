package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeh.class */
public final class zzbeh implements zzdzl<Map<String, String>> {
    private final /* synthetic */ Uri val$uri;
    private final /* synthetic */ zzbee zzern;
    private final /* synthetic */ List zzero;
    private final /* synthetic */ String zzerp;

    public zzbeh(zzbee zzbeeVar, List list, String str, Uri uri) {
        this.zzern = zzbeeVar;
        this.zzero = list;
        this.zzerp = str;
        this.val$uri = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Map<String, String> map) {
        this.zzern.zza(map, this.zzero, this.zzerp);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        String valueOf = String.valueOf(this.val$uri);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 33);
        sb.append("Failed to parse gmsg params for: ");
        sb.append(valueOf);
        zzd.zzex(sb.toString());
    }
}
