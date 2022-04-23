package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/RenameErrorException.class */
public class RenameErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final i f17975a;

    public RenameErrorException(String str, String str2, n nVar, i iVar) {
        super(str2, nVar, a(str, nVar, iVar));
        Objects.requireNonNull(iVar, "errorValue");
        this.f17975a = iVar;
    }
}
