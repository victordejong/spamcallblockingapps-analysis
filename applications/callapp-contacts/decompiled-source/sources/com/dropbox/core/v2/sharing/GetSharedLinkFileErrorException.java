package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/GetSharedLinkFileErrorException.class */
public class GetSharedLinkFileErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final t f18413a;

    public GetSharedLinkFileErrorException(String str, String str2, n nVar, t tVar) {
        super(str2, nVar, a(str, nVar, tVar));
        Objects.requireNonNull(tVar, "errorValue");
        this.f18413a = tVar;
    }
}
