package com.dropbox.core.p265v2.teamlog;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/GetTeamEventsContinueErrorException.class */
public class GetTeamEventsContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9318a f31943a;

    public GetTeamEventsContinueErrorException(String str, String str2, C8621n c8621n, C9318a c9318a) {
        super(str2, c8621n, m25359a(str, c8621n, c9318a));
        Objects.requireNonNull(c9318a, "errorValue");
        this.f31943a = c9318a;
    }
}
