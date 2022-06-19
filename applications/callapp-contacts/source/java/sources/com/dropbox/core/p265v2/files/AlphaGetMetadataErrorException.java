package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.AlphaGetMetadataErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/AlphaGetMetadataErrorException.class */
public class AlphaGetMetadataErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8792a f30968a;

    public AlphaGetMetadataErrorException(String str, String str2, C8621n c8621n, C8792a c8792a) {
        super(str2, c8621n, m25359a(str, c8621n, c8792a));
        Objects.requireNonNull(c8792a, "errorValue");
        this.f30968a = c8792a;
    }
}
