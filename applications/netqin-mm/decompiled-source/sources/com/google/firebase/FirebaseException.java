package com.google.firebase;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseException.class */
public class FirebaseException extends Exception {
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str) {
        super(str);
        Preconditions.m17285a(str, (Object) "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str, Throwable th) {
        super(str, th);
        Preconditions.m17285a(str, (Object) "Detail message must not be empty");
    }
}
