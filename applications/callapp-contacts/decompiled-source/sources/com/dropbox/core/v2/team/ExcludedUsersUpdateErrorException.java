package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ExcludedUsersUpdateErrorException.class */
public class ExcludedUsersUpdateErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final f f18734a;

    public ExcludedUsersUpdateErrorException(String str, String str2, n nVar, f fVar) {
        super(str2, nVar, a(str, nVar, fVar));
        Objects.requireNonNull(fVar, "errorValue");
        this.f18734a = fVar;
    }
}
