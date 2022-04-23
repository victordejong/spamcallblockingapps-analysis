package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderArchiveErrorException.class */
public class TeamFolderArchiveErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ay f18778a;

    public TeamFolderArchiveErrorException(String str, String str2, n nVar, ay ayVar) {
        super(str2, nVar, a(str, nVar, ayVar));
        Objects.requireNonNull(ayVar, "errorValue");
        this.f18778a = ayVar;
    }
}
