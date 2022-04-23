package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/CreateSharedLinkErrorException.class */
public class CreateSharedLinkErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final j f18409a;

    public CreateSharedLinkErrorException(String str, String str2, n nVar, j jVar) {
        super(str2, nVar, a(str, nVar, jVar));
        Objects.requireNonNull(jVar, "errorValue");
        this.f18409a = jVar;
    }
}
