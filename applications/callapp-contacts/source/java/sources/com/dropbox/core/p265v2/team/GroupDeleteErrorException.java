package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupDeleteErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupDeleteErrorException.class */
public class GroupDeleteErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9293i f31807a;

    public GroupDeleteErrorException(String str, String str2, C8621n c8621n, EnumC9293i enumC9293i) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9293i));
        Objects.requireNonNull(enumC9293i, "errorValue");
        this.f31807a = enumC9293i;
    }
}
