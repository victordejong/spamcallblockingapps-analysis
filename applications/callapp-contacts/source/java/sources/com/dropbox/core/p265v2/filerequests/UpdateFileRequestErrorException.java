package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.UpdateFileRequestErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/UpdateFileRequestErrorException.class */
public class UpdateFileRequestErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8791i f30966a;

    public UpdateFileRequestErrorException(String str, String str2, C8621n c8621n, EnumC8791i enumC8791i) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8791i));
        Objects.requireNonNull(enumC8791i, "errorValue");
        this.f30966a = enumC8791i;
    }
}
