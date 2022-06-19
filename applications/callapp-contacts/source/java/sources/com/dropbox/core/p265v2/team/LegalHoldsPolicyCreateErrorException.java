package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyCreateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsPolicyCreateErrorException.class */
public class LegalHoldsPolicyCreateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9312v f31820a;

    public LegalHoldsPolicyCreateErrorException(String str, String str2, C8621n c8621n, EnumC9312v enumC9312v) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9312v));
        Objects.requireNonNull(enumC9312v, "errorValue");
        this.f31820a = enumC9312v;
    }
}
