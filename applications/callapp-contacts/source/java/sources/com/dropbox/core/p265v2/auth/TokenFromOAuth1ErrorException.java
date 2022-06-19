package com.dropbox.core.p265v2.auth;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.auth.TokenFromOAuth1ErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/TokenFromOAuth1ErrorException.class */
public class TokenFromOAuth1ErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8680f f30748a;

    public TokenFromOAuth1ErrorException(String str, String str2, C8621n c8621n, EnumC8680f enumC8680f) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8680f));
        Objects.requireNonNull(enumC8680f, "errorValue");
        this.f30748a = enumC8680f;
    }
}
