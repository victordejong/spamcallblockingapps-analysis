package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsListPoliciesErrorException.class */
public class LegalHoldsListPoliciesErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final u f18749a;

    public LegalHoldsListPoliciesErrorException(String str, String str2, n nVar, u uVar) {
        super(str2, nVar, a(str, nVar, uVar));
        Objects.requireNonNull(uVar, "errorValue");
        this.f18749a = uVar;
    }
}
