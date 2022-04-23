package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetTemporaryLinkErrorException.class */
public class GetTemporaryLinkErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final x f18100a;

    public GetTemporaryLinkErrorException(String str, String str2, n nVar, x xVar) {
        super(str2, nVar, a(str, nVar, xVar));
        Objects.requireNonNull(xVar, "errorValue");
        this.f18100a = xVar;
    }
}
