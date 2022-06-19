package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzk.class */
public final class zzk extends zzn {
    private final /* synthetic */ zzj zzaf;

    public zzk(zzj zzjVar) {
        this.zzaf = zzjVar;
    }

    @Override // com.google.android.gms.internal.auth.zzn, com.google.android.gms.auth.account.zza
    public final void zzc(Account account) {
        Status status;
        Status status2;
        zzj zzjVar = this.zzaf;
        if (account != null) {
            status = Status.f5722f;
        } else {
            status2 = zzh.zzad;
            status = status2;
        }
        zzjVar.setResult((zzj) new zzo(status, account));
    }
}
