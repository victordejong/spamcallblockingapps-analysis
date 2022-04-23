package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsMembersListContinueErrorException.class */
public class GroupsMembersListContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final q f18745a;

    public GroupsMembersListContinueErrorException(String str, String str2, n nVar, q qVar) {
        super(str2, nVar, a(str, nVar, qVar));
        Objects.requireNonNull(qVar, "errorValue");
        this.f18745a = qVar;
    }
}
