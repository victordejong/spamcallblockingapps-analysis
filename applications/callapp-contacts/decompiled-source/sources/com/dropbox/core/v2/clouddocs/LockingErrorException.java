package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/LockingErrorException.class */
public class LockingErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final f f17974a;

    public LockingErrorException(String str, String str2, n nVar, f fVar) {
        super(str2, nVar, a(str, nVar, fVar));
        Objects.requireNonNull(fVar, "errorValue");
        this.f17974a = fVar;
    }
}
