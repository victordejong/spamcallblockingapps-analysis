package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListTeamAppsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListTeamAppsErrorException.class */
public class ListTeamAppsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9224ac f31827a;

    public ListTeamAppsErrorException(String str, String str2, C8621n c8621n, EnumC9224ac enumC9224ac) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9224ac));
        Objects.requireNonNull(enumC9224ac, "errorValue");
        this.f31827a = enumC9224ac;
    }
}
