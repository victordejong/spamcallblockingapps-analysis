package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersSendWelcomeErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSendWelcomeErrorException.class */
public class MembersSendWelcomeErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9232ak f31835a;

    public MembersSendWelcomeErrorException(String str, String str2, C8621n c8621n, EnumC9232ak enumC9232ak) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9232ak));
        Objects.requireNonNull(enumC9232ak, "errorValue");
        this.f31835a = enumC9232ak;
    }
}
