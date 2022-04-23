package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/TokenFromOAuth1ErrorException.class */
public class TokenFromOAuth1ErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final f f17921a;

    public TokenFromOAuth1ErrorException(String str, String str2, n nVar, f fVar) {
        super(str2, nVar, a(str, nVar, fVar));
        Objects.requireNonNull(fVar, "errorValue");
        this.f17921a = fVar;
    }
}
