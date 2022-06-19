package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/AddSecondaryEmailsErrorException.class */
public class AddSecondaryEmailsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9221a f31799a;

    public AddSecondaryEmailsErrorException(String str, String str2, C8621n c8621n, EnumC9221a enumC9221a) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9221a));
        Objects.requireNonNull(enumC9221a, "errorValue");
        this.f31799a = enumC9221a;
    }
}
