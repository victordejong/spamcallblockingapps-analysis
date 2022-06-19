package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.clouddocs.LockingErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/LockingErrorException.class */
public class LockingErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8713f f30822a;

    public LockingErrorException(String str, String str2, C8621n c8621n, C8713f c8713f) {
        super(str2, c8621n, m25359a(str, c8621n, c8713f));
        Objects.requireNonNull(c8713f, "errorValue");
        this.f30822a = c8713f;
    }
}
