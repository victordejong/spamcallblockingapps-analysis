package com.dropbox.core.p265v2.teamlog;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/GetTeamEventsErrorException.class */
public class GetTeamEventsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9322b f31944a;

    public GetTeamEventsErrorException(String str, String str2, C8621n c8621n, EnumC9322b enumC9322b) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9322b));
        Objects.requireNonNull(enumC9322b, "errorValue");
        this.f31944a = enumC9322b;
    }
}
