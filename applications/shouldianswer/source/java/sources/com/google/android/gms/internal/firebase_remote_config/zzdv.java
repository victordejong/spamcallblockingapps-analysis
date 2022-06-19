package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdv.class */
public final class zzdv implements zzdw {
    final /* synthetic */ zzdj zzhk;

    public zzdv(zzdj zzdjVar) {
        this.zzhk = zzdjVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdw
    public final /* synthetic */ Iterator zza(zzds zzdsVar, CharSequence charSequence) {
        return new zzdu(this, zzdsVar, charSequence);
    }
}
