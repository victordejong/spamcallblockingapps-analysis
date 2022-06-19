package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersUnsuspendErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersUnsuspendErrorException.class */
public class MembersUnsuspendErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9241aq f31841a;

    public MembersUnsuspendErrorException(String str, String str2, C8621n c8621n, EnumC9241aq enumC9241aq) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9241aq));
        Objects.requireNonNull(enumC9241aq, "errorValue");
        this.f31841a = enumC9241aq;
    }
}
