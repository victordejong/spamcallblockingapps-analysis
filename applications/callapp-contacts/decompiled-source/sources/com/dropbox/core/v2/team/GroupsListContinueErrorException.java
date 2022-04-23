package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsListContinueErrorException.class */
public class GroupsListContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final p f18744a;

    public GroupsListContinueErrorException(String str, String str2, n nVar, p pVar) {
        super(str2, nVar, a(str, nVar, pVar));
        Objects.requireNonNull(pVar, "errorValue");
        this.f18744a = pVar;
    }
}
