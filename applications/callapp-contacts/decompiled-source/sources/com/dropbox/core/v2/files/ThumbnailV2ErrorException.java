package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ThumbnailV2ErrorException.class */
public class ThumbnailV2ErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ba f18114a;

    public ThumbnailV2ErrorException(String str, String str2, n nVar, ba baVar) {
        super(str2, nVar, a(str, nVar, baVar));
        Objects.requireNonNull(baVar, "errorValue");
        this.f18114a = baVar;
    }
}
