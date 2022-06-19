package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyUpdateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsPolicyUpdateErrorException.class */
public class LegalHoldsPolicyUpdateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9314x f31822a;

    public LegalHoldsPolicyUpdateErrorException(String str, String str2, C8621n c8621n, EnumC9314x enumC9314x) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9314x));
        Objects.requireNonNull(enumC9314x, "errorValue");
        this.f31822a = enumC9314x;
    }
}
