package com.dropbox.core.v2.async;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/async/PollErrorException.class */
public class PollErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final a f17920a;

    public PollErrorException(String str, String str2, n nVar, a aVar) {
        super(str2, nVar, a(str, nVar, aVar));
        Objects.requireNonNull(aVar, "errorValue");
        this.f17920a = aVar;
    }
}
