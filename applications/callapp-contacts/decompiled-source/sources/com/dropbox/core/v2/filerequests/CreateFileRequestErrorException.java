package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/CreateFileRequestErrorException.class */
public class CreateFileRequestErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final b f18084a;

    public CreateFileRequestErrorException(String str, String str2, n nVar, b bVar) {
        super(str2, nVar, a(str, nVar, bVar));
        Objects.requireNonNull(bVar, "errorValue");
        this.f18084a = bVar;
    }
}
