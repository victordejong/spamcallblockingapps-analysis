package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListMembersAppsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMembersAppsErrorException.class */
public class ListMembersAppsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9222aa f31825a;

    public ListMembersAppsErrorException(String str, String str2, C8621n c8621n, EnumC9222aa enumC9222aa) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9222aa));
        Objects.requireNonNull(enumC9222aa, "errorValue");
        this.f31825a = enumC9222aa;
    }
}
