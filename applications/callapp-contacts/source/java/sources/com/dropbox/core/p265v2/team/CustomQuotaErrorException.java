package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.CustomQuotaErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/CustomQuotaErrorException.class */
public class CustomQuotaErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9262b f31800a;

    public CustomQuotaErrorException(String str, String str2, C8621n c8621n, EnumC9262b enumC9262b) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9262b));
        Objects.requireNonNull(enumC9262b, "errorValue");
        this.f31800a = enumC9262b;
    }
}
