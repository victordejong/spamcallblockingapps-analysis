package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyResponse;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzat.class */
public final class zzat extends zzaj {
    private final /* synthetic */ zzas zzcf;

    public zzat(zzas zzasVar) {
        this.zzcf = zzasVar;
    }

    @Override // com.google.android.gms.internal.auth.zzaj, com.google.android.gms.internal.auth.zzal
    public final void zza(ProxyResponse proxyResponse) {
        this.zzcf.setResult((zzas) new zzaw(proxyResponse));
    }
}
