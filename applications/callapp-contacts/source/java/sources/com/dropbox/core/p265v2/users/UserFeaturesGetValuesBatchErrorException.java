package com.dropbox.core.p265v2.users;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.users.UserFeaturesGetValuesBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/UserFeaturesGetValuesBatchErrorException.class */
public class UserFeaturesGetValuesBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9331e f31953a;

    public UserFeaturesGetValuesBatchErrorException(String str, String str2, C8621n c8621n, EnumC9331e enumC9331e) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9331e));
        Objects.requireNonNull(enumC9331e, "errorValue");
        this.f31953a = enumC9331e;
    }
}
