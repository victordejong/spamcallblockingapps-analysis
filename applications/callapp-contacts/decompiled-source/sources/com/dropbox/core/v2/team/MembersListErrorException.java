package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersListErrorException.class */
public class MembersListErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ah f18762a;

    public MembersListErrorException(String str, String str2, n nVar, ah ahVar) {
        super(str2, nVar, a(str, nVar, ahVar));
        Objects.requireNonNull(ahVar, "errorValue");
        this.f18762a = ahVar;
    }
}
