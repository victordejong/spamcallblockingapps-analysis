package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddo.class */
public final class zzddo implements zzdfi<zzddp> {
    private final PackageInfo zzdue;
    private final zzf zzedg;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;

    public zzddo(zzdzv zzdzvVar, zzdnp zzdnpVar, PackageInfo packageInfo, zzf zzfVar) {
        this.zzghl = zzdzvVar;
        this.zzfwy = zzdnpVar;
        this.zzdue = packageInfo;
        this.zzedg = zzfVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01b6, code lost:
        if (r0 == 3) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zza(java.util.ArrayList r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzddo.zza(java.util.ArrayList, android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddp> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzddr
            private final zzddo zzhch;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhch = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhch.zzati();
            }
        });
    }

    public final /* synthetic */ zzddp zzati() throws Exception {
        ArrayList<String> arrayList = this.zzfwy.zzhky;
        return arrayList == null ? zzddq.zzhcg : arrayList.isEmpty() ? zzddt.zzhcg : new zzddp(this, arrayList) { // from class: com.google.android.gms.internal.ads.zzdds
            private final zzddo zzhch;
            private final ArrayList zzhci;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhch = this;
                this.zzhci = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Bundle bundle) {
                this.zzhch.zza(this.zzhci, bundle);
            }
        };
    }
}
