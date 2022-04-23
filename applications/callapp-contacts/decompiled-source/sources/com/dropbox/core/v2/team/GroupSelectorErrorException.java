package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupSelectorErrorException.class */
public class GroupSelectorErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final m f18741a;

    public GroupSelectorErrorException(String str, String str2, n nVar, m mVar) {
        super(str2, nVar, a(str, nVar, mVar));
        Objects.requireNonNull(mVar, "errorValue");
        this.f18741a = mVar;
    }
}
