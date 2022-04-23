package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMemberDevicesErrorException.class */
public class ListMemberDevicesErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final z f18754a;

    public ListMemberDevicesErrorException(String str, String str2, n nVar, z zVar) {
        super(str2, nVar, a(str, nVar, zVar));
        Objects.requireNonNull(zVar, "errorValue");
        this.f18754a = zVar;
    }
}
