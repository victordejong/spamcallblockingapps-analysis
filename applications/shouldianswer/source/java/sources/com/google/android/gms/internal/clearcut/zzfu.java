package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzfu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfu.class */
public class zzfu<M extends zzfu<M>> extends zzfz {
    protected zzfw zzrj;

    @Override // com.google.android.gms.internal.clearcut.zzfz
    public void zza(zzfs zzfsVar) {
        if (this.zzrj == null) {
            return;
        }
        for (int i = 0; i < this.zzrj.size(); i++) {
            this.zzrj.zzaq(i).zza(zzfsVar);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz
    public int zzen() {
        if (this.zzrj != null) {
            for (int i = 0; i < this.zzrj.size(); i++) {
                this.zzrj.zzaq(i).zzen();
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: zzeo */
    public M clone() {
        M m = (M) super.clone();
        zzfy.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz
    public /* synthetic */ zzfz zzep() {
        return (zzfu) clone();
    }
}
