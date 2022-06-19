package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.internal.ShowFirstParty;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder.class */
public class Auth$AuthCredentialsOptions$Builder {
    public String zzl;
    public String zzn;
    public Boolean zzu;

    public Auth$AuthCredentialsOptions$Builder() {
        this.zzu = Boolean.FALSE;
    }

    @ShowFirstParty
    public Auth$AuthCredentialsOptions$Builder(Auth.AuthCredentialsOptions authCredentialsOptions) {
        this.zzu = Boolean.FALSE;
        this.zzl = Auth.AuthCredentialsOptions.zzc(authCredentialsOptions);
        this.zzu = Boolean.valueOf(Auth.AuthCredentialsOptions.zzd(authCredentialsOptions));
        this.zzn = Auth.AuthCredentialsOptions.zze(authCredentialsOptions);
    }

    public Auth$AuthCredentialsOptions$Builder forceEnableSaveDialog() {
        this.zzu = Boolean.TRUE;
        return this;
    }

    @ShowFirstParty
    public Auth$AuthCredentialsOptions$Builder zzc(String str) {
        this.zzn = str;
        return this;
    }

    @ShowFirstParty
    public Auth.AuthCredentialsOptions zze() {
        return new Auth.AuthCredentialsOptions(this);
    }
}
