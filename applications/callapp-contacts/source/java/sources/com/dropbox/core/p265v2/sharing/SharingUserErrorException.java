package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.SharingUserErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SharingUserErrorException.class */
public class SharingUserErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9122bn f31389a;

    public SharingUserErrorException(String str, String str2, C8621n c8621n, EnumC9122bn enumC9122bn) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9122bn));
        Objects.requireNonNull(enumC9122bn, "errorValue");
        this.f31389a = enumC9122bn;
    }
}
