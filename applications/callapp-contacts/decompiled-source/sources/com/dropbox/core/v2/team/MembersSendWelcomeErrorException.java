package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSendWelcomeErrorException.class */
public class MembersSendWelcomeErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ak f18765a;

    public MembersSendWelcomeErrorException(String str, String str2, n nVar, ak akVar) {
        super(str2, nVar, a(str, nVar, akVar));
        Objects.requireNonNull(akVar, "errorValue");
        this.f18765a = akVar;
    }
}
