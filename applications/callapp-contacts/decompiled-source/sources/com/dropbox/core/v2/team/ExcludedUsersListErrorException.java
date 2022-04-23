package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ExcludedUsersListErrorException.class */
public class ExcludedUsersListErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final e f18733a;

    public ExcludedUsersListErrorException(String str, String str2, n nVar, e eVar) {
        super(str2, nVar, a(str, nVar, eVar));
        Objects.requireNonNull(eVar, "errorValue");
        this.f18733a = eVar;
    }
}
