package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamNamespacesListErrorException.class */
public class TeamNamespacesListErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bi f18786a;

    public TeamNamespacesListErrorException(String str, String str2, n nVar, bi biVar) {
        super(str2, nVar, a(str, nVar, biVar));
        Objects.requireNonNull(biVar, "errorValue");
        this.f18786a = biVar;
    }
}
