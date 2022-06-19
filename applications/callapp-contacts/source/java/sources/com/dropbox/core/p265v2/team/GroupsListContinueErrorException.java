package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupsListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsListContinueErrorException.class */
public class GroupsListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9306p f31814a;

    public GroupsListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9306p enumC9306p) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9306p));
        Objects.requireNonNull(enumC9306p, "errorValue");
        this.f31814a = enumC9306p;
    }
}
