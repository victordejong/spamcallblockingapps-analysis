package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.GetTemporaryLinkErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetTemporaryLinkErrorException.class */
public class GetTemporaryLinkErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8975x f30976a;

    public GetTemporaryLinkErrorException(String str, String str2, C8621n c8621n, C8975x c8975x) {
        super(str2, c8621n, m25359a(str, c8621n, c8975x));
        Objects.requireNonNull(c8975x, "errorValue");
        this.f30976a = c8975x;
    }
}
