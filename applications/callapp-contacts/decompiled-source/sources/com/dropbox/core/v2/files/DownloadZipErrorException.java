package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/DownloadZipErrorException.class */
public class DownloadZipErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final k f18096a;

    public DownloadZipErrorException(String str, String str2, n nVar, k kVar) {
        super(str2, nVar, a(str, nVar, kVar));
        Objects.requireNonNull(kVar, "errorValue");
        this.f18096a = kVar;
    }
}
