package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SharingUserErrorException.class */
public class SharingUserErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bn f18432a;

    public SharingUserErrorException(String str, String str2, n nVar, bn bnVar) {
        super(str2, nVar, a(str, nVar, bnVar));
        Objects.requireNonNull(bnVar, "errorValue");
        this.f18432a = bnVar;
    }
}
