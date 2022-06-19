package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsGetPolicyErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsGetPolicyErrorException.class */
public class LegalHoldsGetPolicyErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9309s f31817a;

    public LegalHoldsGetPolicyErrorException(String str, String str2, C8621n c8621n, EnumC9309s enumC9309s) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9309s));
        Objects.requireNonNull(enumC9309s, "errorValue");
        this.f31817a = enumC9309s;
    }
}
