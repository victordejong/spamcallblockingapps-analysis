package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RevokeSharedLinkErrorException.class */
public class RevokeSharedLinkErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aw f18427a;

    public RevokeSharedLinkErrorException(String str, String str2, n nVar, aw awVar) {
        super(str2, nVar, a(str, nVar, awVar));
        Objects.requireNonNull(awVar, "errorValue");
        this.f18427a = awVar;
    }
}
