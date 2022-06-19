package com.google.firebase;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseException.class */
public class FirebaseException extends Exception {
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@RecentlyNonNull String str) {
        super(str);
        C6155o.m17021g(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
        super(str, th);
        C6155o.m17021g(str, "Detail message must not be empty");
    }
}
