package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListTeamDevicesErrorException.class */
public class ListTeamDevicesErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ad f18758a;

    public ListTeamDevicesErrorException(String str, String str2, n nVar, ad adVar) {
        super(str2, nVar, a(str, nVar, adVar));
        Objects.requireNonNull(adVar, "errorValue");
        this.f18758a = adVar;
    }
}
