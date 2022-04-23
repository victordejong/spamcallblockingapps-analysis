package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsGetInfoErrorException.class */
public class GroupsGetInfoErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final o f18743a;

    public GroupsGetInfoErrorException(String str, String str2, n nVar, o oVar) {
        super(str2, nVar, a(str, nVar, oVar));
        Objects.requireNonNull(oVar, "errorValue");
        this.f18743a = oVar;
    }
}
