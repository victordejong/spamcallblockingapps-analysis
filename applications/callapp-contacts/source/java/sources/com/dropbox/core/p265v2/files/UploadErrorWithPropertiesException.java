package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.UploadErrorWithPropertiesException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadErrorWithPropertiesException.class */
public class UploadErrorWithPropertiesException extends DbxApiException {

    /* renamed from: a */
    public final C8888bd f30992a;

    public UploadErrorWithPropertiesException(String str, String str2, C8621n c8621n, C8888bd c8888bd) {
        super(str2, c8621n, m25359a(str, c8621n, c8888bd));
        Objects.requireNonNull(c8888bd, "errorValue");
        this.f30992a = c8888bd;
    }
}
