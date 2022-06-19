package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdt.class */
final /* synthetic */ class zzcdt implements zzaif {
    static final zzaif zzdhv = new zzcdt();

    private zzcdt() {
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        zzd.zzdy("Show native ad policy validator overlay.");
        ((zzbeb) obj).getView().setVisibility(0);
    }
}
