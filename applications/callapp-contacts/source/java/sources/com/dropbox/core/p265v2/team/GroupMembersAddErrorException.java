package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupMembersAddErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupMembersAddErrorException.class */
public class GroupMembersAddErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9295k f31809a;

    public GroupMembersAddErrorException(String str, String str2, C8621n c8621n, C9295k c9295k) {
        super(str2, c8621n, m25359a(str, c8621n, c9295k));
        Objects.requireNonNull(c9295k, "errorValue");
        this.f31809a = c9295k;
    }
}
