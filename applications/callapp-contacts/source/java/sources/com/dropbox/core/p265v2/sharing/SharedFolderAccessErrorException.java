package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.SharedFolderAccessErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SharedFolderAccessErrorException.class */
public class SharedFolderAccessErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9092bc f31387a;

    public SharedFolderAccessErrorException(String str, String str2, C8621n c8621n, EnumC9092bc enumC9092bc) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9092bc));
        Objects.requireNonNull(enumC9092bc, "errorValue");
        this.f31387a = enumC9092bc;
    }
}
