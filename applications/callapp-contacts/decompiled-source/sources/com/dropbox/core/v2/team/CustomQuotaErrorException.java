package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/CustomQuotaErrorException.class */
public class CustomQuotaErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final b f18730a;

    public CustomQuotaErrorException(String str, String str2, n nVar, b bVar) {
        super(str2, nVar, a(str, nVar, bVar));
        Objects.requireNonNull(bVar, "errorValue");
        this.f18730a = bVar;
    }
}
