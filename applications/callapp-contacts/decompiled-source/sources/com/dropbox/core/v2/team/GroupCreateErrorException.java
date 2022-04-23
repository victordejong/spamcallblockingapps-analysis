package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupCreateErrorException.class */
public class GroupCreateErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final h f18736a;

    public GroupCreateErrorException(String str, String str2, n nVar, h hVar) {
        super(str2, nVar, a(str, nVar, hVar));
        Objects.requireNonNull(hVar, "errorValue");
        this.f18736a = hVar;
    }
}
