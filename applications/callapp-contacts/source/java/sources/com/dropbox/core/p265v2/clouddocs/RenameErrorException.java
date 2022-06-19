package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.clouddocs.RenameErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/RenameErrorException.class */
public class RenameErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8722i f30823a;

    public RenameErrorException(String str, String str2, C8621n c8621n, C8722i c8722i) {
        super(str2, c8621n, m25359a(str, c8621n, c8722i));
        Objects.requireNonNull(c8722i, "errorValue");
        this.f30823a = c8722i;
    }
}
