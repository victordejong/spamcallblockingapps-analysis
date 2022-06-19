package com.dropbox.core.p265v2.users;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.users.GetAccountErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/GetAccountErrorException.class */
public class GetAccountErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9328c f31952a;

    public GetAccountErrorException(String str, String str2, C8621n c8621n, EnumC9328c enumC9328c) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9328c));
        Objects.requireNonNull(enumC9328c, "errorValue");
        this.f31952a = enumC9328c;
    }
}
