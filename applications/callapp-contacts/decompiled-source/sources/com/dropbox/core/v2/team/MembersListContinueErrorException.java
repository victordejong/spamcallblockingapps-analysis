package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersListContinueErrorException.class */
public class MembersListContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ag f18761a;

    public MembersListContinueErrorException(String str, String str2, n nVar, ag agVar) {
        super(str2, nVar, a(str, nVar, agVar));
        Objects.requireNonNull(agVar, "errorValue");
        this.f18761a = agVar;
    }
}
