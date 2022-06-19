package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ExcludedUsersListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ExcludedUsersListContinueErrorException.class */
public class ExcludedUsersListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9288d f31802a;

    public ExcludedUsersListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9288d enumC9288d) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9288d));
        Objects.requireNonNull(enumC9288d, "errorValue");
        this.f31802a = enumC9288d;
    }
}
