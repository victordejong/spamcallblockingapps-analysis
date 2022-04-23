package com.google.firebase;

import com.google.android.gms.common.internal.o;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/FirebaseException.class */
public class FirebaseException extends Exception {
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str) {
        super(str);
        o.a(str, (Object) "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str, Throwable th) {
        super(str, th);
        o.a(str, (Object) "Detail message must not be empty");
    }
}
