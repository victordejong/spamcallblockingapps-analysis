package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ModifySharedLinkSettingsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException.class */
public class ModifySharedLinkSettingsErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9036am f31378a;

    public ModifySharedLinkSettingsErrorException(String str, String str2, C8621n c8621n, C9036am c9036am) {
        super(str2, c8621n, m25359a(str, c8621n, c9036am));
        Objects.requireNonNull(c9036am, "errorValue");
        this.f31378a = c9036am;
    }
}
