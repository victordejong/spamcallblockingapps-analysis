package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupsGetInfoErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupsGetInfoErrorException.class */
public class GroupsGetInfoErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9305o f31813a;

    public GroupsGetInfoErrorException(String str, String str2, C8621n c8621n, EnumC9305o enumC9305o) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9305o));
        Objects.requireNonNull(enumC9305o, "errorValue");
        this.f31813a = enumC9305o;
    }
}
