package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.GetSharedLinksErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/GetSharedLinksErrorException.class */
public class GetSharedLinksErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9204u f31371a;

    public GetSharedLinksErrorException(String str, String str2, C8621n c8621n, C9204u c9204u) {
        super(str2, c8621n, m25359a(str, c8621n, c9204u));
        Objects.requireNonNull(c9204u, "errorValue");
        this.f31371a = c9204u;
    }
}
