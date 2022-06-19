package com.dropbox.core.p265v2.account;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.account.SetProfilePhotoErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/SetProfilePhotoErrorException.class */
public class SetProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8661b f30743a;

    public SetProfilePhotoErrorException(String str, String str2, C8621n c8621n, EnumC8661b enumC8661b) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8661b));
        Objects.requireNonNull(enumC8661b, "errorValue");
        this.f30743a = enumC8661b;
    }
}
