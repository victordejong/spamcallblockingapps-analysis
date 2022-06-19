package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzm.class */
public final class zzm extends zzn {
    private final /* synthetic */ zzl zzag;

    public zzm(zzl zzlVar) {
        this.zzag = zzlVar;
    }

    @Override // com.google.android.gms.internal.auth.zzn, com.google.android.gms.auth.account.zza
    public final void zza(boolean z) {
        Status status;
        Status status2;
        zzl zzlVar = this.zzag;
        if (z) {
            status = Status.f5722f;
        } else {
            status2 = zzh.zzad;
            status = status2;
        }
        zzlVar.setResult((zzl) new zzq(status));
    }
}
