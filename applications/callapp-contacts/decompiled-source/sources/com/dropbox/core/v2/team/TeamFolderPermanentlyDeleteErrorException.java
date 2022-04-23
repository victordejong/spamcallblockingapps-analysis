package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException.class */
public class TeamFolderPermanentlyDeleteErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bd f18782a;

    public TeamFolderPermanentlyDeleteErrorException(String str, String str2, n nVar, bd bdVar) {
        super(str2, nVar, a(str, nVar, bdVar));
        Objects.requireNonNull(bdVar, "errorValue");
        this.f18782a = bdVar;
    }
}
