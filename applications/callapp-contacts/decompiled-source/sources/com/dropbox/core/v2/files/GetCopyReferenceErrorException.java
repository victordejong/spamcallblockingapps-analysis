package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetCopyReferenceErrorException.class */
public class GetCopyReferenceErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final v f18098a;

    public GetCopyReferenceErrorException(String str, String str2, n nVar, v vVar) {
        super(str2, nVar, a(str, nVar, vVar));
        Objects.requireNonNull(vVar, "errorValue");
        this.f18098a = vVar;
    }
}
