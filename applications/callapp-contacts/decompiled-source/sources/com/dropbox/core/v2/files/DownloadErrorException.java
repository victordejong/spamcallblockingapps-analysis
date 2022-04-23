package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/DownloadErrorException.class */
public class DownloadErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final j f18095a;

    public DownloadErrorException(String str, String str2, n nVar, j jVar) {
        super(str2, nVar, a(str, nVar, jVar));
        Objects.requireNonNull(jVar, "errorValue");
        this.f18095a = jVar;
    }
}
