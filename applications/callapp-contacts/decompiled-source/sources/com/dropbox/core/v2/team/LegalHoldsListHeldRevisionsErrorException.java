package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsListHeldRevisionsErrorException.class */
public class LegalHoldsListHeldRevisionsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final t f18748a;

    public LegalHoldsListHeldRevisionsErrorException(String str, String str2, n nVar, t tVar) {
        super(str2, nVar, a(str, nVar, tVar));
        Objects.requireNonNull(tVar, "errorValue");
        this.f18748a = tVar;
    }
}
