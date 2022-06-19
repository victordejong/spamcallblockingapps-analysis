package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupUpdateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupUpdateErrorException.class */
public class GroupUpdateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9304n f31812a;

    public GroupUpdateErrorException(String str, String str2, C8621n c8621n, EnumC9304n enumC9304n) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9304n));
        Objects.requireNonNull(enumC9304n, "errorValue");
        this.f31812a = enumC9304n;
    }
}
