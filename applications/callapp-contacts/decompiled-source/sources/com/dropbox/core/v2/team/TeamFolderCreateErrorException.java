package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderCreateErrorException.class */
public class TeamFolderCreateErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final az f18779a;

    public TeamFolderCreateErrorException(String str, String str2, n nVar, az azVar) {
        super(str2, nVar, a(str, nVar, azVar));
        Objects.requireNonNull(azVar, "errorValue");
        this.f18779a = azVar;
    }
}
