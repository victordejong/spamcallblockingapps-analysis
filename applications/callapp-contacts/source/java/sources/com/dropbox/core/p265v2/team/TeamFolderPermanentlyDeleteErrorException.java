package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderPermanentlyDeleteErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException.class */
public class TeamFolderPermanentlyDeleteErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9269bd f31852a;

    public TeamFolderPermanentlyDeleteErrorException(String str, String str2, C8621n c8621n, C9269bd c9269bd) {
        super(str2, c8621n, m25359a(str, c8621n, c9269bd));
        Objects.requireNonNull(c9269bd, "errorValue");
        this.f31852a = c9269bd;
    }
}
