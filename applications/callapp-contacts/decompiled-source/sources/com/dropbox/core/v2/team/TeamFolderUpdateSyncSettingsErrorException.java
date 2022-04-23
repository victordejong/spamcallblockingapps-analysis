package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException.class */
public class TeamFolderUpdateSyncSettingsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bg f18784a;

    public TeamFolderUpdateSyncSettingsErrorException(String str, String str2, n nVar, bg bgVar) {
        super(str2, nVar, a(str, nVar, bgVar));
        Objects.requireNonNull(bgVar, "errorValue");
        this.f18784a = bgVar;
    }
}
