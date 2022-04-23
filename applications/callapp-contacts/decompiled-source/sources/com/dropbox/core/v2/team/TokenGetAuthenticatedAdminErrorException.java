package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException.class */
public class TokenGetAuthenticatedAdminErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bj f18787a;

    public TokenGetAuthenticatedAdminErrorException(String str, String str2, n nVar, bj bjVar) {
        super(str2, nVar, a(str, nVar, bjVar));
        Objects.requireNonNull(bjVar, "errorValue");
        this.f18787a = bjVar;
    }
}
