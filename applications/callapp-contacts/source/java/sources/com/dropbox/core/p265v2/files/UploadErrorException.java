package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.UploadErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadErrorException.class */
public class UploadErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8884bc f30991a;

    public UploadErrorException(String str, String str2, C8621n c8621n, C8884bc c8884bc) {
        super(str2, c8621n, m25359a(str, c8621n, c8884bc));
        Objects.requireNonNull(c8884bc, "errorValue");
        this.f30991a = c8884bc;
    }
}
