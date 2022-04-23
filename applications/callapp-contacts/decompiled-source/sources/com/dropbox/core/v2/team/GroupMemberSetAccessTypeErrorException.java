package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException.class */
public class GroupMemberSetAccessTypeErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final j f18738a;

    public GroupMemberSetAccessTypeErrorException(String str, String str2, n nVar, j jVar) {
        super(str2, nVar, a(str, nVar, jVar));
        Objects.requireNonNull(jVar, "errorValue");
        this.f18738a = jVar;
    }
}
