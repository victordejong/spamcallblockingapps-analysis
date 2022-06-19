package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.DownloadZipErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/DownloadZipErrorException.class */
public class DownloadZipErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8939k f30972a;

    public DownloadZipErrorException(String str, String str2, C8621n c8621n, C8939k c8939k) {
        super(str2, c8621n, m25359a(str, c8621n, c8939k));
        Objects.requireNonNull(c8939k, "errorValue");
        this.f30972a = c8939k;
    }
}
