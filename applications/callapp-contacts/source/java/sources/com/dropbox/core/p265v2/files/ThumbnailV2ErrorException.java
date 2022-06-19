package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ThumbnailV2ErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ThumbnailV2ErrorException.class */
public class ThumbnailV2ErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8879ba f30990a;

    public ThumbnailV2ErrorException(String str, String str2, C8621n c8621n, C8879ba c8879ba) {
        super(str2, c8621n, m25359a(str, c8621n, c8879ba));
        Objects.requireNonNull(c8879ba, "errorValue");
        this.f30990a = c8879ba;
    }
}
