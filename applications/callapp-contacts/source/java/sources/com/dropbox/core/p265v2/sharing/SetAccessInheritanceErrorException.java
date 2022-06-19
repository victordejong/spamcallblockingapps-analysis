package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.SetAccessInheritanceErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SetAccessInheritanceErrorException.class */
public class SetAccessInheritanceErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9073ax f31385a;

    public SetAccessInheritanceErrorException(String str, String str2, C8621n c8621n, C9073ax c9073ax) {
        super(str2, c8621n, m25359a(str, c8621n, c9073ax));
        Objects.requireNonNull(c9073ax, "errorValue");
        this.f31385a = c9073ax;
    }
}
