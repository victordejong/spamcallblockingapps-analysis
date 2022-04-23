package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException.class */
public class RevokeDeviceSessionBatchErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ar f18772a;

    public RevokeDeviceSessionBatchErrorException(String str, String str2, n nVar, ar arVar) {
        super(str2, nVar, a(str, nVar, arVar));
        Objects.requireNonNull(arVar, "errorValue");
        this.f18772a = arVar;
    }
}
