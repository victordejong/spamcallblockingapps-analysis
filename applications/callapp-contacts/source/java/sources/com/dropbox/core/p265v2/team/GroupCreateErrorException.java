package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupCreateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupCreateErrorException.class */
public class GroupCreateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9292h f31806a;

    public GroupCreateErrorException(String str, String str2, C8621n c8621n, EnumC9292h enumC9292h) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9292h));
        Objects.requireNonNull(enumC9292h, "errorValue");
        this.f31806a = enumC9292h;
    }
}
