package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMembersAppsErrorException.class */
public class ListMembersAppsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aa f18755a;

    public ListMembersAppsErrorException(String str, String str2, n nVar, aa aaVar) {
        super(str2, nVar, a(str, nVar, aaVar));
        Objects.requireNonNull(aaVar, "errorValue");
        this.f18755a = aaVar;
    }
}
