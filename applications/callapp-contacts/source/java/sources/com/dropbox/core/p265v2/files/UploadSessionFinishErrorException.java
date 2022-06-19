package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.UploadSessionFinishErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadSessionFinishErrorException.class */
public class UploadSessionFinishErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8892be f30993a;

    public UploadSessionFinishErrorException(String str, String str2, C8621n c8621n, C8892be c8892be) {
        super(str2, c8621n, m25359a(str, c8621n, c8892be));
        Objects.requireNonNull(c8892be, "errorValue");
        this.f30993a = c8892be;
    }
}
