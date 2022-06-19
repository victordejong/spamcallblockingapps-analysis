package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderUpdateSyncSettingsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException.class */
public class TeamFolderUpdateSyncSettingsErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9280bg f31854a;

    public TeamFolderUpdateSyncSettingsErrorException(String str, String str2, C8621n c8621n, C9280bg c9280bg) {
        super(str2, c8621n, m25359a(str, c8621n, c9280bg));
        Objects.requireNonNull(c9280bg, "errorValue");
        this.f31854a = c9280bg;
    }
}
