package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderRenameErrorException.class */
public class TeamFolderRenameErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final be f18783a;

    public TeamFolderRenameErrorException(String str, String str2, n nVar, be beVar) {
        super(str2, nVar, a(str, nVar, beVar));
        Objects.requireNonNull(beVar, "errorValue");
        this.f18783a = beVar;
    }
}
