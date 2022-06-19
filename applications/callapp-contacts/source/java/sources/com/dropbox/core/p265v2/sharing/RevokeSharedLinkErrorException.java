package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.RevokeSharedLinkErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RevokeSharedLinkErrorException.class */
public class RevokeSharedLinkErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9072aw f31384a;

    public RevokeSharedLinkErrorException(String str, String str2, C8621n c8621n, EnumC9072aw enumC9072aw) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9072aw));
        Objects.requireNonNull(enumC9072aw, "errorValue");
        this.f31384a = enumC9072aw;
    }
}
