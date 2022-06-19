package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzav.class */
public final class zzav extends zzaj {
    private final /* synthetic */ zzau zzcg;

    public zzav(zzau zzauVar) {
        this.zzcg = zzauVar;
    }

    @Override // com.google.android.gms.internal.auth.zzaj, com.google.android.gms.internal.auth.zzal
    public final void zzb(String str) {
        if (str != null) {
            this.zzcg.setResult((zzau) new zzax(str));
        } else {
            this.zzcg.setResult((zzau) zzaq.zzc(new Status(3006, null)));
        }
    }
}
