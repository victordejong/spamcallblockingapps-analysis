package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderListContinueErrorException.class */
public class TeamFolderListContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bb f18780a;

    public TeamFolderListContinueErrorException(String str, String str2, n nVar, bb bbVar) {
        super(str2, nVar, a(str, nVar, bbVar));
        Objects.requireNonNull(bbVar, "errorValue");
        this.f18780a = bbVar;
    }
}
