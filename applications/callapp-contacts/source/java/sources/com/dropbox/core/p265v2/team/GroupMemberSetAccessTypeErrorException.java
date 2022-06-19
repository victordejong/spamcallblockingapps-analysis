package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupMemberSetAccessTypeErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException.class */
public class GroupMemberSetAccessTypeErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9294j f31808a;

    public GroupMemberSetAccessTypeErrorException(String str, String str2, C8621n c8621n, EnumC9294j enumC9294j) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9294j));
        Objects.requireNonNull(enumC9294j, "errorValue");
        this.f31808a = enumC9294j;
    }
}
