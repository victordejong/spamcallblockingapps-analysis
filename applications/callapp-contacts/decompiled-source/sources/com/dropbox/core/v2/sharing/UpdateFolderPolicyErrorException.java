package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException.class */
public class UpdateFolderPolicyErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bu f18438a;

    public UpdateFolderPolicyErrorException(String str, String str2, n nVar, bu buVar) {
        super(str2, nVar, a(str, nVar, buVar));
        Objects.requireNonNull(buVar, "errorValue");
        this.f18438a = buVar;
    }
}
