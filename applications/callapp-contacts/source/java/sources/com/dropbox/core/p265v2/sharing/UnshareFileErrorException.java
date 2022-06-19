package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.UnshareFileErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnshareFileErrorException.class */
public class UnshareFileErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9135br f31392a;

    public UnshareFileErrorException(String str, String str2, C8621n c8621n, C9135br c9135br) {
        super(str2, c8621n, m25359a(str, c8621n, c9135br));
        Objects.requireNonNull(c9135br, "errorValue");
        this.f31392a = c9135br;
    }
}
