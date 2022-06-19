package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupsPollErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsPollErrorException.class */
public class GroupsPollErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9308r f31816a;

    public GroupsPollErrorException(String str, String str2, C8621n c8621n, EnumC9308r enumC9308r) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9308r));
        Objects.requireNonNull(enumC9308r, "errorValue");
        this.f31816a = enumC9308r;
    }
}
