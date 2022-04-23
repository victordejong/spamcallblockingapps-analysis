package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/MountFolderErrorException.class */
public class MountFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final an f18422a;

    public MountFolderErrorException(String str, String str2, n nVar, an anVar) {
        super(str2, nVar, a(str, nVar, anVar));
        Objects.requireNonNull(anVar, "errorValue");
        this.f18422a = anVar;
    }
}
