package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamNamespacesListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamNamespacesListContinueErrorException.class */
public class TeamNamespacesListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9284bh f31855a;

    public TeamNamespacesListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9284bh enumC9284bh) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9284bh));
        Objects.requireNonNull(enumC9284bh, "errorValue");
        this.f31855a = enumC9284bh;
    }
}
