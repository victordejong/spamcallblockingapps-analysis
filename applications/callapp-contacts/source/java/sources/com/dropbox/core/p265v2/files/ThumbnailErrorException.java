package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ThumbnailErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ThumbnailErrorException.class */
public class ThumbnailErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8872az f30989a;

    public ThumbnailErrorException(String str, String str2, C8621n c8621n, C8872az c8872az) {
        super(str2, c8621n, m25359a(str, c8621n, c8872az));
        Objects.requireNonNull(c8872az, "errorValue");
        this.f30989a = c8872az;
    }
}
