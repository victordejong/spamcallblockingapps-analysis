package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderCreateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderCreateErrorException.class */
public class TeamFolderCreateErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9258az f31849a;

    public TeamFolderCreateErrorException(String str, String str2, C8621n c8621n, C9258az c9258az) {
        super(str2, c8621n, m25359a(str, c8621n, c9258az));
        Objects.requireNonNull(c9258az, "errorValue");
        this.f31849a = c9258az;
    }
}
