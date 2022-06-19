package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.SetCustomQuotaErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/SetCustomQuotaErrorException.class */
public class SetCustomQuotaErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9246av f31846a;

    public SetCustomQuotaErrorException(String str, String str2, C8621n c8621n, EnumC9246av enumC9246av) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9246av));
        Objects.requireNonNull(enumC9246av, "errorValue");
        this.f31846a = enumC9246av;
    }
}
