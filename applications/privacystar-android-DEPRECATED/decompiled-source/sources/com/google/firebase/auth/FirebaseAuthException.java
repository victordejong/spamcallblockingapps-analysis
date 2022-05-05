package com.google.firebase.auth;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import com.google.firebase.annotations.PublicApi;
@PublicApi
/* loaded from: classes-dex2jar.jar:com/google/firebase/auth/FirebaseAuthException.class */
public class FirebaseAuthException extends FirebaseException {
    private final String zza;

    @PublicApi
    public FirebaseAuthException(@NonNull String str, @NonNull String str2) {
        super(str2);
        this.zza = Preconditions.checkNotEmpty(str);
    }

    @NonNull
    @PublicApi
    public String getErrorCode() {
        return this.zza;
    }
}
