package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderListErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderListErrorException.class */
public class TeamFolderListErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9267bc f31851a;

    public TeamFolderListErrorException(String str, String str2, C8621n c8621n, C9267bc c9267bc) {
        super(str2, c8621n, m25359a(str, c8621n, c9267bc));
        Objects.requireNonNull(c9267bc, "errorValue");
        this.f31851a = c9267bc;
    }
}
