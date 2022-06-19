package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.DeleteAllClosedFileRequestsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsErrorException.class */
public class DeleteAllClosedFileRequestsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8786d f30961a;

    public DeleteAllClosedFileRequestsErrorException(String str, String str2, C8621n c8621n, EnumC8786d enumC8786d) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8786d));
        Objects.requireNonNull(enumC8786d, "errorValue");
        this.f30961a = enumC8786d;
    }
}
