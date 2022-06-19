package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeLinkedAppErrorException.class */
public class RevokeLinkedAppErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9245au f31845a;

    public RevokeLinkedAppErrorException(String str, String str2, C8621n c8621n, EnumC9245au enumC9245au) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9245au));
        Objects.requireNonNull(enumC9245au, "errorValue");
        this.f31845a = enumC9245au;
    }
}
