package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.SharedLinkErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SharedLinkErrorException.class */
public class SharedLinkErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9110bi f31388a;

    public SharedLinkErrorException(String str, String str2, C8621n c8621n, EnumC9110bi enumC9110bi) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9110bi));
        Objects.requireNonNull(enumC9110bi, "errorValue");
        this.f31388a = enumC9110bi;
    }
}
