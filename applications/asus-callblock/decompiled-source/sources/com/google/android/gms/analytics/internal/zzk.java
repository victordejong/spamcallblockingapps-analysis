package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.ab;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzk.class */
public class zzk extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private final ab f3872a = new ab();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(zzf zzfVar) {
        super(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        zzlT().zzkL().zzb(this.f3872a);
        zzks();
    }

    public void zzks() {
        zzap zzkx = zzkx();
        String zzkU = zzkx.zzkU();
        if (zzkU != null) {
            this.f3872a.f4096a = zzkU;
        }
        String zzkV = zzkx.zzkV();
        if (zzkV != null) {
            this.f3872a.f4097b = zzkV;
        }
    }

    public ab zzmx() {
        zzma();
        return this.f3872a;
    }
}
