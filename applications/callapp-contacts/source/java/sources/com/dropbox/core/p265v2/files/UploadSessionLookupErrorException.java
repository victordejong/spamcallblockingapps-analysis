package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.UploadSessionLookupErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/UploadSessionLookupErrorException.class */
public class UploadSessionLookupErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8896bf f30994a;

    public UploadSessionLookupErrorException(String str, String str2, C8621n c8621n, C8896bf c8896bf) {
        super(str2, c8621n, m25359a(str, c8621n, c8896bf));
        Objects.requireNonNull(c8896bf, "errorValue");
        this.f30994a = c8896bf;
    }
}
