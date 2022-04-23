package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/ListUsersCursorErrorException.class */
public class ListUsersCursorErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final d f18389a;

    public ListUsersCursorErrorException(String str, String str2, n nVar, d dVar) {
        super(str2, nVar, a(str, nVar, dVar));
        Objects.requireNonNull(dVar, "errorValue");
        this.f18389a = dVar;
    }
}
