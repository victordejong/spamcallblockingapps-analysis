package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnshareFileErrorException.class */
public class UnshareFileErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final br f18435a;

    public UnshareFileErrorException(String str, String str2, n nVar, br brVar) {
        super(str2, nVar, a(str, nVar, brVar));
        Objects.requireNonNull(brVar, "errorValue");
        this.f18435a = brVar;
    }
}
