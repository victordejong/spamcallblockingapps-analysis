package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ExcludedUsersListErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ExcludedUsersListErrorException.class */
public class ExcludedUsersListErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9289e f31803a;

    public ExcludedUsersListErrorException(String str, String str2, C8621n c8621n, EnumC9289e enumC9289e) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9289e));
        Objects.requireNonNull(enumC9289e, "errorValue");
        this.f31803a = enumC9289e;
    }
}
