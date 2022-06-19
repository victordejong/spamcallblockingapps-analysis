package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupMembersRemoveErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupMembersRemoveErrorException.class */
public class GroupMembersRemoveErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9299l f31810a;

    public GroupMembersRemoveErrorException(String str, String str2, C8621n c8621n, C9299l c9299l) {
        super(str2, c8621n, m25359a(str, c8621n, c9299l));
        Objects.requireNonNull(c9299l, "errorValue");
        this.f31810a = c9299l;
    }
}
