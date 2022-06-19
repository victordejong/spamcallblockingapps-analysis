package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderActivateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderActivateErrorException.class */
public class TeamFolderActivateErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9250ax f31847a;

    public TeamFolderActivateErrorException(String str, String str2, C8621n c8621n, C9250ax c9250ax) {
        super(str2, c8621n, m25359a(str, c8621n, c9250ax));
        Objects.requireNonNull(c9250ax, "errorValue");
        this.f31847a = c9250ax;
    }
}
