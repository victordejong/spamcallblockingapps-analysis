package com.dropbox.core.v2.users;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/GetAccountErrorException.class */
public class GetAccountErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final c f18859a;

    public GetAccountErrorException(String str, String str2, n nVar, c cVar) {
        super(str2, nVar, a(str, nVar, cVar));
        Objects.requireNonNull(cVar, "errorValue");
        this.f18859a = cVar;
    }
}
