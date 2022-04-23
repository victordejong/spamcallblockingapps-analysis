package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderListErrorException.class */
public class TeamFolderListErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bc f18781a;

    public TeamFolderListErrorException(String str, String str2, n nVar, bc bcVar) {
        super(str2, nVar, a(str, nVar, bcVar));
        Objects.requireNonNull(bcVar, "errorValue");
        this.f18781a = bcVar;
    }
}
