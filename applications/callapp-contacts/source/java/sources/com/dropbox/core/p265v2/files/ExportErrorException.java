package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ExportErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ExportErrorException.class */
public class ExportErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8943l f30973a;

    public ExportErrorException(String str, String str2, C8621n c8621n, C8943l c8943l) {
        super(str2, c8621n, m25359a(str, c8621n, c8943l));
        Objects.requireNonNull(c8943l, "errorValue");
        this.f30973a = c8943l;
    }
}
