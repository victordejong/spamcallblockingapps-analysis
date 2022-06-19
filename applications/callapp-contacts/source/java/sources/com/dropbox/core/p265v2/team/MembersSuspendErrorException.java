package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersSuspendErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSuspendErrorException.class */
public class MembersSuspendErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9239ao f31839a;

    public MembersSuspendErrorException(String str, String str2, C8621n c8621n, EnumC9239ao enumC9239ao) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9239ao));
        Objects.requireNonNull(enumC9239ao, "errorValue");
        this.f31839a = enumC9239ao;
    }
}
