package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.GetFileRequestErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/GetFileRequestErrorException.class */
public class GetFileRequestErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8788f f30963a;

    public GetFileRequestErrorException(String str, String str2, C8621n c8621n, EnumC8788f enumC8788f) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8788f));
        Objects.requireNonNull(enumC8788f, "errorValue");
        this.f30963a = enumC8788f;
    }
}
