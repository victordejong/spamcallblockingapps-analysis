package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ShareFolderErrorException.class */
public class ShareFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ay f18429a;

    public ShareFolderErrorException(String str, String str2, n nVar, ay ayVar) {
        super(str2, nVar, a(str, nVar, ayVar));
        Objects.requireNonNull(ayVar, "errorValue");
        this.f18429a = ayVar;
    }
}
