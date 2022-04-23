package io.realm.internal.async;

import io.realm.internal.Keep;
@Keep
/* loaded from: classes3-dex2jar.jar:io/realm/internal/async/BadVersionException.class */
public class BadVersionException extends Exception {
    public BadVersionException(String str) {
        super(str);
    }

    public BadVersionException(String str, Throwable th) {
        super(str, th);
    }
}
