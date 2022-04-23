package com.google.android.gms.internal.icing;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzh.class */
public final class zzh {
    private Account account;
    private String zzj;
    private boolean zzk;
    private List<zzl> zzl;

    public final zzg zza() {
        return new zzg(this.zzj, this.zzk, this.account, this.zzl != null ? (zzl[]) this.zzl.toArray(new zzl[this.zzl.size()]) : null);
    }

    public final zzh zza(Account account) {
        this.account = account;
        return this;
    }

    public final zzh zza(zzl zzlVar) {
        if (this.zzl == null && zzlVar != null) {
            this.zzl = new ArrayList();
        }
        if (zzlVar != null) {
            this.zzl.add(zzlVar);
        }
        return this;
    }

    public final zzh zza(String str) {
        this.zzj = str;
        return this;
    }

    public final zzh zza(boolean z) {
        this.zzk = true;
        return this;
    }
}
