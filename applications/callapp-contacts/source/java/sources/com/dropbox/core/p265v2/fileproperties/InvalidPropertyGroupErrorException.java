package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.InvalidPropertyGroupErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException.class */
public class InvalidPropertyGroupErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8743c f30864a;

    public InvalidPropertyGroupErrorException(String str, String str2, C8621n c8621n, C8743c c8743c) {
        super(str2, c8621n, m25359a(str, c8621n, c8743c));
        Objects.requireNonNull(c8743c, "errorValue");
        this.f30864a = c8743c;
    }
}
