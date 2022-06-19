package com.google.android.gms.internal.auth_api;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth-api.zbg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbf.class */
public final class zbf extends zbd {
    public final /* synthetic */ zbg zba;

    public zbf(zbg zbgVar) {
        this.zba = zbgVar;
    }

    @Override // com.google.android.gms.internal.auth_api.zbd
    public final void zbb(Status status, Credential credential) {
        this.zba.setResult(new zbe(status, credential));
    }

    @Override // com.google.android.gms.internal.auth_api.zbd
    public final void zbc(Status status) {
        this.zba.setResult(new zbe(status, null));
    }
}
