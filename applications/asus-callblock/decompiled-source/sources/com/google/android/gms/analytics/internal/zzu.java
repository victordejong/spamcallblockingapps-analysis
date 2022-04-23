package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.ag;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzu.class */
public class zzu extends zzd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(zzf zzfVar) {
        super(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
    }

    public ag zznE() {
        zzma();
        return zzlT().zzkM();
    }

    public String zznF() {
        zzma();
        ag zznE = zznE();
        int i = zznE.c;
        return new StringBuilder(23).append(i).append("x").append(zznE.d).toString();
    }
}
