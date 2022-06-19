package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.GetSharedLinkFileErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/GetSharedLinkFileErrorException.class */
public class GetSharedLinkFileErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9203t f31370a;

    public GetSharedLinkFileErrorException(String str, String str2, C8621n c8621n, EnumC9203t enumC9203t) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9203t));
        Objects.requireNonNull(enumC9203t, "errorValue");
        this.f31370a = enumC9203t;
    }
}
