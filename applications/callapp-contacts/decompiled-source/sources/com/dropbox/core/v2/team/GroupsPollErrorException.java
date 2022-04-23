package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsPollErrorException.class */
public class GroupsPollErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final r f18746a;

    public GroupsPollErrorException(String str, String str2, n nVar, r rVar) {
        super(str2, nVar, a(str, nVar, rVar));
        Objects.requireNonNull(rVar, "errorValue");
        this.f18746a = rVar;
    }
}
