package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadErrorWithPropertiesException.class */
public class UploadErrorWithPropertiesException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bd f18116a;

    public UploadErrorWithPropertiesException(String str, String str2, n nVar, bd bdVar) {
        super(str2, nVar, a(str, nVar, bdVar));
        Objects.requireNonNull(bdVar, "errorValue");
        this.f18116a = bdVar;
    }
}
