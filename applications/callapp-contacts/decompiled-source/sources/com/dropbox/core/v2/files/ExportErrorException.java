package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ExportErrorException.class */
public class ExportErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final l f18097a;

    public ExportErrorException(String str, String str2, n nVar, l lVar) {
        super(str2, nVar, a(str, nVar, lVar));
        Objects.requireNonNull(lVar, "errorValue");
        this.f18097a = lVar;
    }
}
