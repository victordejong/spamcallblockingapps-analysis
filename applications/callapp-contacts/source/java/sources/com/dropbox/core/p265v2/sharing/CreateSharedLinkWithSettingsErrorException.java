package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkWithSettingsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException.class */
public class CreateSharedLinkWithSettingsErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9179k f31367a;

    public CreateSharedLinkWithSettingsErrorException(String str, String str2, C8621n c8621n, C9179k c9179k) {
        super(str2, c8621n, m25359a(str, c8621n, c9179k));
        Objects.requireNonNull(c9179k, "errorValue");
        this.f31367a = c9179k;
    }
}
