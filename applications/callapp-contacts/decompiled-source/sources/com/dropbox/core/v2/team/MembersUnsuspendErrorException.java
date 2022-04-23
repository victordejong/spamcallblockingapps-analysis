package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersUnsuspendErrorException.class */
public class MembersUnsuspendErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aq f18771a;

    public MembersUnsuspendErrorException(String str, String str2, n nVar, aq aqVar) {
        super(str2, nVar, a(str, nVar, aqVar));
        Objects.requireNonNull(aqVar, "errorValue");
        this.f18771a = aqVar;
    }
}
