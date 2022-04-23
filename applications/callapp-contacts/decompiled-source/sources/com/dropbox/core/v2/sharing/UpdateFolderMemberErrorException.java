package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UpdateFolderMemberErrorException.class */
public class UpdateFolderMemberErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bt f18437a;

    public UpdateFolderMemberErrorException(String str, String str2, n nVar, bt btVar) {
        super(str2, nVar, a(str, nVar, btVar));
        Objects.requireNonNull(btVar, "errorValue");
        this.f18437a = btVar;
    }
}
