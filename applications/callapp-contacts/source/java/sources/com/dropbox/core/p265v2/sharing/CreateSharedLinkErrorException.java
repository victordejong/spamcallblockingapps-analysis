package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/CreateSharedLinkErrorException.class */
public class CreateSharedLinkErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9175j f31366a;

    public CreateSharedLinkErrorException(String str, String str2, C8621n c8621n, C9175j c9175j) {
        super(str2, c8621n, m25359a(str, c8621n, c9175j));
        Objects.requireNonNull(c9175j, "errorValue");
        this.f31366a = c9175j;
    }
}
