package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.DeleteFileRequestErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/DeleteFileRequestErrorException.class */
public class DeleteFileRequestErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8787e f30962a;

    public DeleteFileRequestErrorException(String str, String str2, C8621n c8621n, EnumC8787e enumC8787e) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8787e));
        Objects.requireNonNull(enumC8787e, "errorValue");
        this.f30962a = enumC8787e;
    }
}
