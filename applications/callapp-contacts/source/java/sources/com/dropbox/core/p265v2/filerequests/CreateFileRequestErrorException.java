package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.CreateFileRequestErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/CreateFileRequestErrorException.class */
public class CreateFileRequestErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8784b f30960a;

    public CreateFileRequestErrorException(String str, String str2, C8621n c8621n, EnumC8784b enumC8784b) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8784b));
        Objects.requireNonNull(enumC8784b, "errorValue");
        this.f30960a = enumC8784b;
    }
}
