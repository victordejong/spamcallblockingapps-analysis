package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetProfileErrorException.class */
public class MembersSetProfileErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final am f18767a;

    public MembersSetProfileErrorException(String str, String str2, n nVar, am amVar) {
        super(str2, nVar, a(str, nVar, amVar));
        Objects.requireNonNull(amVar, "errorValue");
        this.f18767a = amVar;
    }
}
