package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqa.class */
public final class zzeqa implements zzery<zzeqb> {
    private final zzfsn zza;
    private final zzfar zzb;
    private final PackageInfo zzc;
    private final zzg zzd;

    public zzeqa(zzfsn zzfsnVar, zzfar zzfarVar, PackageInfo packageInfo, zzg zzgVar) {
        this.zza = zzfsnVar;
        this.zzb = zzfarVar;
        this.zzc = packageInfo;
        this.zzd = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeqb> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzepw
            private final zzeqa zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0196, code lost:
        if (r0 == 3) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zzb(java.util.ArrayList r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeqa.zzb(java.util.ArrayList, android.os.Bundle):void");
    }

    public final /* bridge */ /* synthetic */ zzeqb zzc() throws Exception {
        ArrayList<String> arrayList = this.zzb.zzg;
        return arrayList == null ? zzepx.zza : arrayList.isEmpty() ? zzepy.zza : new zzeqb(this, arrayList) { // from class: com.google.android.gms.internal.ads.zzepz
            private final zzeqa zza;
            private final ArrayList zzb;

            {
                this.zza = this;
                this.zzb = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzerx
            public final void zzf(Bundle bundle) {
                this.zza.zzb(this.zzb, bundle);
            }
        };
    }
}
