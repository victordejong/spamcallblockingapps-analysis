package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.DownloadErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/DownloadErrorException.class */
public class DownloadErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8935j f30971a;

    public DownloadErrorException(String str, String str2, C8621n c8621n, C8935j c8935j) {
        super(str2, c8621n, m25359a(str, c8621n, c8935j));
        Objects.requireNonNull(c8935j, "errorValue");
        this.f30971a = c8935j;
    }
}
