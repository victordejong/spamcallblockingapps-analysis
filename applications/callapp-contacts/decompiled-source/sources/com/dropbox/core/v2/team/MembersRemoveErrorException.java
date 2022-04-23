package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersRemoveErrorException.class */
public class MembersRemoveErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final aj f18764a;

    public MembersRemoveErrorException(String str, String str2, n nVar, aj ajVar) {
        super(str2, nVar, a(str, nVar, ajVar));
        Objects.requireNonNull(ajVar, "errorValue");
        this.f18764a = ajVar;
    }
}
