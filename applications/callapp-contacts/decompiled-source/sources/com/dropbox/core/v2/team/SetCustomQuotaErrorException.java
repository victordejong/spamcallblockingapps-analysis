package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/SetCustomQuotaErrorException.class */
public class SetCustomQuotaErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final av f18776a;

    public SetCustomQuotaErrorException(String str, String str2, n nVar, av avVar) {
        super(str2, nVar, a(str, nVar, avVar));
        Objects.requireNonNull(avVar, "errorValue");
        this.f18776a = avVar;
    }
}
