package io.realm.exceptions;

import io.realm.internal.Keep;
@Keep
/* loaded from: classes2-dex2jar.jar:io/realm/exceptions/RealmException.class */
public final class RealmException extends RuntimeException {
    public RealmException(String str) {
        super(str);
    }

    public RealmException(String str, Throwable th) {
        super(str, th);
    }
}
