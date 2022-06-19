package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamNamespacesListErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamNamespacesListErrorException.class */
public class TeamNamespacesListErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9285bi f31856a;

    public TeamNamespacesListErrorException(String str, String str2, C8621n c8621n, EnumC9285bi enumC9285bi) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9285bi));
        Objects.requireNonNull(enumC9285bi, "errorValue");
        this.f31856a = enumC9285bi;
    }
}
