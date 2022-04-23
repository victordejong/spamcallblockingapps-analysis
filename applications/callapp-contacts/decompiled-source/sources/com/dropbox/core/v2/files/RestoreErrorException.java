package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/RestoreErrorException.class */
public class RestoreErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aq f18109a;

    public RestoreErrorException(String str, String str2, n nVar, aq aqVar) {
        super(str2, nVar, a(str, nVar, aqVar));
        Objects.requireNonNull(aqVar, "errorValue");
        this.f18109a = aqVar;
    }
}
