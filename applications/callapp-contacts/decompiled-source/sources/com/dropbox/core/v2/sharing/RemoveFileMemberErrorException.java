package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RemoveFileMemberErrorException.class */
public class RemoveFileMemberErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final as f18425a;

    public RemoveFileMemberErrorException(String str, String str2, n nVar, as asVar) {
        super(str2, nVar, a(str, nVar, asVar));
        Objects.requireNonNull(asVar, "errorValue");
        this.f18425a = asVar;
    }
}
