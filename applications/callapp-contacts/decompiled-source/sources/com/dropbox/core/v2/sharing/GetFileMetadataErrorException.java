package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/GetFileMetadataErrorException.class */
public class GetFileMetadataErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final s f18412a;

    public GetFileMetadataErrorException(String str, String str2, n nVar, s sVar) {
        super(str2, nVar, a(str, nVar, sVar));
        Objects.requireNonNull(sVar, "errorValue");
        this.f18412a = sVar;
    }
}
