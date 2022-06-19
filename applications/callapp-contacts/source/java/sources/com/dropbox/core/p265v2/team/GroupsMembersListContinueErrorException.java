package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupsMembersListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsMembersListContinueErrorException.class */
public class GroupsMembersListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9307q f31815a;

    public GroupsMembersListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9307q enumC9307q) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9307q));
        Objects.requireNonNull(enumC9307q, "errorValue");
        this.f31815a = enumC9307q;
    }
}
