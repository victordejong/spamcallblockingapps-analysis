package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.LockFileErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/LockFileErrorException.class */
public class LockFileErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8815ah f30982a;

    public LockFileErrorException(String str, String str2, C8621n c8621n, C8815ah c8815ah) {
        super(str2, c8621n, m25359a(str, c8621n, c8815ah));
        Objects.requireNonNull(c8815ah, "errorValue");
        this.f30982a = c8815ah;
    }
}
