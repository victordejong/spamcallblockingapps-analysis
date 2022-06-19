package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListMemberAppsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMemberAppsErrorException.class */
public class ListMemberAppsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9315y f31823a;

    public ListMemberAppsErrorException(String str, String str2, C8621n c8621n, EnumC9315y enumC9315y) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9315y));
        Objects.requireNonNull(enumC9315y, "errorValue");
        this.f31823a = enumC9315y;
    }
}
