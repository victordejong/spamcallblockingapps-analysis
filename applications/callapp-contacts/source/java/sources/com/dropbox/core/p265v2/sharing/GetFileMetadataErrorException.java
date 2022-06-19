package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/GetFileMetadataErrorException.class */
public class GetFileMetadataErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9199s f31369a;

    public GetFileMetadataErrorException(String str, String str2, C8621n c8621n, C9199s c9199s) {
        super(str2, c8621n, m25359a(str, c8621n, c9199s));
        Objects.requireNonNull(c9199s, "errorValue");
        this.f31369a = c9199s;
    }
}
