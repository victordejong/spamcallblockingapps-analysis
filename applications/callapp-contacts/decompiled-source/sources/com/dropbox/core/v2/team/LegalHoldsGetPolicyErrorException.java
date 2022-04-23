package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsGetPolicyErrorException.class */
public class LegalHoldsGetPolicyErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final s f18747a;

    public LegalHoldsGetPolicyErrorException(String str, String str2, n nVar, s sVar) {
        super(str2, nVar, a(str, nVar, sVar));
        Objects.requireNonNull(sVar, "errorValue");
        this.f18747a = sVar;
    }
}
