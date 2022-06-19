package com.google.android.gms.auth.api.signin;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension.class */
public interface GoogleSignInOptionsExtension {
    @KeepForSdk
    public static final int FITNESS = 3;
    @KeepForSdk
    public static final int GAMES = 1;

    @KeepForSdk
    int getExtensionType();

    @KeepForSdk
    List<Scope> getImpliedScopes();

    @KeepForSdk
    Bundle toBundle();
}
