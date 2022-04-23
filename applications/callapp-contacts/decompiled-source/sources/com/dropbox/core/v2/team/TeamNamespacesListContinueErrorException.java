package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamNamespacesListContinueErrorException.class */
public class TeamNamespacesListContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bh f18785a;

    public TeamNamespacesListContinueErrorException(String str, String str2, n nVar, bh bhVar) {
        super(str2, nVar, a(str, nVar, bhVar));
        Objects.requireNonNull(bhVar, "errorValue");
        this.f18785a = bhVar;
    }
}
