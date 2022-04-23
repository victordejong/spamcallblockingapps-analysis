package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException.class */
public class RelinquishFileMembershipErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aq f18423a;

    public RelinquishFileMembershipErrorException(String str, String str2, n nVar, aq aqVar) {
        super(str2, nVar, a(str, nVar, aqVar));
        Objects.requireNonNull(aqVar, "errorValue");
        this.f18423a = aqVar;
    }
}
