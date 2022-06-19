package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.RelocationErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/RelocationErrorException.class */
public class RelocationErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8840ap f30984a;

    public RelocationErrorException(String str, String str2, C8621n c8621n, C8840ap c8840ap) {
        super(str2, c8621n, m25359a(str, c8621n, c8840ap));
        Objects.requireNonNull(c8840ap, "errorValue");
        this.f30984a = c8840ap;
    }
}
