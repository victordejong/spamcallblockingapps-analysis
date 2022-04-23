package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeLinkedAppErrorException.class */
public class RevokeLinkedAppErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final au f18775a;

    public RevokeLinkedAppErrorException(String str, String str2, n nVar, au auVar) {
        super(str2, nVar, a(str, nVar, auVar));
        Objects.requireNonNull(auVar, "errorValue");
        this.f18775a = auVar;
    }
}
