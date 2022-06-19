package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.LegalHoldsListHeldRevisionsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsListHeldRevisionsErrorException.class */
public class LegalHoldsListHeldRevisionsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9310t f31818a;

    public LegalHoldsListHeldRevisionsErrorException(String str, String str2, C8621n c8621n, EnumC9310t enumC9310t) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9310t));
        Objects.requireNonNull(enumC9310t, "errorValue");
        this.f31818a = enumC9310t;
    }
}
