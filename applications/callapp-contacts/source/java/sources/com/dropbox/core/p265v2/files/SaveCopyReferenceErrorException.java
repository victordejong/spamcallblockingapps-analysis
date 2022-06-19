package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.SaveCopyReferenceErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/SaveCopyReferenceErrorException.class */
public class SaveCopyReferenceErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8848ar f30986a;

    public SaveCopyReferenceErrorException(String str, String str2, C8621n c8621n, C8848ar c8848ar) {
        super(str2, c8621n, m25359a(str, c8621n, c8848ar));
        Objects.requireNonNull(c8848ar, "errorValue");
        this.f30986a = c8848ar;
    }
}
