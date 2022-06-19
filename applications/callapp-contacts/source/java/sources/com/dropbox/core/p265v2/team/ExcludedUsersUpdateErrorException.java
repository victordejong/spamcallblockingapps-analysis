package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ExcludedUsersUpdateErrorException.class */
public class ExcludedUsersUpdateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9290f f31804a;

    public ExcludedUsersUpdateErrorException(String str, String str2, C8621n c8621n, EnumC9290f enumC9290f) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9290f));
        Objects.requireNonNull(enumC9290f, "errorValue");
        this.f31804a = enumC9290f;
    }
}
