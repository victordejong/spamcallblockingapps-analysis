package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/LockFileErrorException.class */
public class LockFileErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ah f18106a;

    public LockFileErrorException(String str, String str2, n nVar, ah ahVar) {
        super(str2, nVar, a(str, nVar, ahVar));
        Objects.requireNonNull(ahVar, "errorValue");
        this.f18106a = ahVar;
    }
}
