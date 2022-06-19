package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsListPoliciesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsListPoliciesErrorException.class */
public class LegalHoldsListPoliciesErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9311u f31819a;

    public LegalHoldsListPoliciesErrorException(String str, String str2, C8621n c8621n, EnumC9311u enumC9311u) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9311u));
        Objects.requireNonNull(enumC9311u, "errorValue");
        this.f31819a = enumC9311u;
    }
}
