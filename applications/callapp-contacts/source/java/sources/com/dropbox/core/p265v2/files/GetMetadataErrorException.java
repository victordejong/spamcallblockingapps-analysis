package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.GetMetadataErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetMetadataErrorException.class */
public class GetMetadataErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8971w f30975a;

    public GetMetadataErrorException(String str, String str2, C8621n c8621n, C8971w c8971w) {
        super(str2, c8621n, m25359a(str, c8621n, c8971w));
        Objects.requireNonNull(c8971w, "errorValue");
        this.f30975a = c8971w;
    }
}
