package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.clouddocs.UpdateContentErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/UpdateContentErrorException.class */
public class UpdateContentErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8731l f30824a;

    public UpdateContentErrorException(String str, String str2, C8621n c8621n, EnumC8731l enumC8731l) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8731l));
        Objects.requireNonNull(enumC8731l, "errorValue");
        this.f30824a = enumC8731l;
    }
}
