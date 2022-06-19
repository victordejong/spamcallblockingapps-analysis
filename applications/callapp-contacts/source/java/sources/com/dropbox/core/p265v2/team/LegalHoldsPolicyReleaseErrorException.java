package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyReleaseErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsPolicyReleaseErrorException.class */
public class LegalHoldsPolicyReleaseErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9313w f31821a;

    public LegalHoldsPolicyReleaseErrorException(String str, String str2, C8621n c8621n, EnumC9313w enumC9313w) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9313w));
        Objects.requireNonNull(enumC9313w, "errorValue");
        this.f31821a = enumC9313w;
    }
}
