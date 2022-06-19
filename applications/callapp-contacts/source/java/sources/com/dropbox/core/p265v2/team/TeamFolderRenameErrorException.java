package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderRenameErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderRenameErrorException.class */
public class TeamFolderRenameErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9273be f31853a;

    public TeamFolderRenameErrorException(String str, String str2, C8621n c8621n, C9273be c9273be) {
        super(str2, c8621n, m25359a(str, c8621n, c9273be));
        Objects.requireNonNull(c9273be, "errorValue");
        this.f31853a = c9273be;
    }
}
