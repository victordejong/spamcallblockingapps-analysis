package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetMetadataErrorException.class */
public class GetMetadataErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final w f18099a;

    public GetMetadataErrorException(String str, String str2, n nVar, w wVar) {
        super(str2, nVar, a(str, nVar, wVar));
        Objects.requireNonNull(wVar, "errorValue");
        this.f18099a = wVar;
    }
}
