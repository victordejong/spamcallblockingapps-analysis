package com.jakewharton.rxbinding2.internal;

import android.os.Looper;
import android.support.annotation.RestrictTo;
import io.reactivex.Observer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/internal/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
        throw new AssertionError("No instances.");
    }

    public static boolean checkMainThread(Observer<?> observer) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        observer.onError(new IllegalStateException("Expected to be called on the main thread but was " + Thread.currentThread().getName()));
        return false;
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}
