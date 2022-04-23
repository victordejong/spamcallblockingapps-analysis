package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ThumbnailErrorException.class */
public class ThumbnailErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final az f18113a;

    public ThumbnailErrorException(String str, String str2, n nVar, az azVar) {
        super(str2, nVar, a(str, nVar, azVar));
        Objects.requireNonNull(azVar, "errorValue");
        this.f18113a = azVar;
    }
}
