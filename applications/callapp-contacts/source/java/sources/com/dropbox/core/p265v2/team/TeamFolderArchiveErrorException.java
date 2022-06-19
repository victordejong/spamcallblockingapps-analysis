package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderArchiveErrorException.class */
public class TeamFolderArchiveErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9254ay f31848a;

    public TeamFolderArchiveErrorException(String str, String str2, C8621n c8621n, C9254ay c9254ay) {
        super(str2, c8621n, m25359a(str, c8621n, c9254ay));
        Objects.requireNonNull(c9254ay, "errorValue");
        this.f31848a = c9254ay;
    }
}
