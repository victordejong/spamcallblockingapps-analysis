package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadSessionLookupErrorException.class */
public class UploadSessionLookupErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bf f18118a;

    public UploadSessionLookupErrorException(String str, String str2, n nVar, bf bfVar) {
        super(str2, nVar, a(str, nVar, bfVar));
        Objects.requireNonNull(bfVar, "errorValue");
        this.f18118a = bfVar;
    }
}
