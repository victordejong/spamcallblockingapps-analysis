package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMembersDevicesErrorException.class */
public class ListMembersDevicesErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ab f18756a;

    public ListMembersDevicesErrorException(String str, String str2, n nVar, ab abVar) {
        super(str2, nVar, a(str, nVar, abVar));
        Objects.requireNonNull(abVar, "errorValue");
        this.f18756a = abVar;
    }
}
