package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersRecoverErrorException.class */
public class MembersRecoverErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ai f18763a;

    public MembersRecoverErrorException(String str, String str2, n nVar, ai aiVar) {
        super(str2, nVar, a(str, nVar, aiVar));
        Objects.requireNonNull(aiVar, "errorValue");
        this.f18763a = aiVar;
    }
}
