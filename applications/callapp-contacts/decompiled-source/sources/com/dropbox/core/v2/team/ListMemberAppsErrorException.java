package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMemberAppsErrorException.class */
public class ListMemberAppsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final y f18753a;

    public ListMemberAppsErrorException(String str, String str2, n nVar, y yVar) {
        super(str2, nVar, a(str, nVar, yVar));
        Objects.requireNonNull(yVar, "errorValue");
        this.f18753a = yVar;
    }
}
