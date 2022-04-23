package com.google.firebase.appindexing;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/FirebaseAppIndexingTooManyArgumentsException.class */
public class FirebaseAppIndexingTooManyArgumentsException extends FirebaseAppIndexingException {
    public FirebaseAppIndexingTooManyArgumentsException() {
        super("Too many Indexables provided. Try splitting them in batches.");
    }

    public FirebaseAppIndexingTooManyArgumentsException(@NonNull String str) {
        super(str);
    }

    public FirebaseAppIndexingTooManyArgumentsException(@NonNull String str, Throwable th) {
        super(str, th);
    }
}
