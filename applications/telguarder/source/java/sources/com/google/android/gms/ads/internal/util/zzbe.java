package com.google.android.gms.ads.internal.util;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzag;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzbc;
import com.google.android.gms.internal.ads.zzz;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbe.class */
public final class zzbe extends zzab<zzz> {
    private final Map<String, String> zzaj;
    private final zzbaa<zzz> zzegk;
    private final zzaze zzegl;

    public zzbe(String str, zzbaa<zzz> zzbaaVar) {
        this(str, null, zzbaaVar);
    }

    private zzbe(String str, Map<String, String> map, zzbaa<zzz> zzbaaVar) {
        super(0, str, new zzbd(zzbaaVar));
        this.zzaj = null;
        this.zzegk = zzbaaVar;
        zzaze zzazeVar = new zzaze();
        this.zzegl = zzazeVar;
        zzazeVar.zza(str, ShareTarget.METHOD_GET, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final zzag<zzz> zza(zzz zzzVar) {
        return zzag.zza(zzzVar, zzbc.zzb(zzzVar));
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final /* synthetic */ void zza(zzz zzzVar) {
        zzz zzzVar2 = zzzVar;
        this.zzegl.zza(zzzVar2.zzaj, zzzVar2.statusCode);
        zzaze zzazeVar = this.zzegl;
        byte[] bArr = zzzVar2.data;
        if (zzaze.isEnabled() && bArr != null) {
            zzazeVar.zzi(bArr);
        }
        this.zzegk.set(zzzVar2);
    }
}
