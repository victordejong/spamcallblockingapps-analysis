package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TokenGetAuthenticatedAdminErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException.class */
public class TokenGetAuthenticatedAdminErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9286bj f31857a;

    public TokenGetAuthenticatedAdminErrorException(String str, String str2, C8621n c8621n, EnumC9286bj enumC9286bj) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9286bj));
        Objects.requireNonNull(enumC9286bj, "errorValue");
        this.f31857a = enumC9286bj;
    }
}
