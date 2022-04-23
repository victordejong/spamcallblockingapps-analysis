package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/LegalHoldsPolicyReleaseErrorException.class */
public class LegalHoldsPolicyReleaseErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final w f18751a;

    public LegalHoldsPolicyReleaseErrorException(String str, String str2, n nVar, w wVar) {
        super(str2, nVar, a(str, nVar, wVar));
        Objects.requireNonNull(wVar, "errorValue");
        this.f18751a = wVar;
    }
}
