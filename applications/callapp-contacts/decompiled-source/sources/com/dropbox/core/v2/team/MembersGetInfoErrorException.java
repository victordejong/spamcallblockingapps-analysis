package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersGetInfoErrorException.class */
public class MembersGetInfoErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final af f18760a;

    public MembersGetInfoErrorException(String str, String str2, n nVar, af afVar) {
        super(str2, nVar, a(str, nVar, afVar));
        Objects.requireNonNull(afVar, "errorValue");
        this.f18760a = afVar;
    }
}
