package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetPermissionsErrorException.class */
public class MembersSetPermissionsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final al f18766a;

    public MembersSetPermissionsErrorException(String str, String str2, n nVar, al alVar) {
        super(str2, nVar, a(str, nVar, alVar));
        Objects.requireNonNull(alVar, "errorValue");
        this.f18766a = alVar;
    }
}
