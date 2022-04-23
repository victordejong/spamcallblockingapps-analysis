package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/AddSecondaryEmailsErrorException.class */
public class AddSecondaryEmailsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final a f18729a;

    public AddSecondaryEmailsErrorException(String str, String str2, n nVar, a aVar) {
        super(str2, nVar, a(str, nVar, aVar));
        Objects.requireNonNull(aVar, "errorValue");
        this.f18729a = aVar;
    }
}
