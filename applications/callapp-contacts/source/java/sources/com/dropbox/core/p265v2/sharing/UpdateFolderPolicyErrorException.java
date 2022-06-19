package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.UpdateFolderPolicyErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException.class */
public class UpdateFolderPolicyErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9147bu f31395a;

    public UpdateFolderPolicyErrorException(String str, String str2, C8621n c8621n, C9147bu c9147bu) {
        super(str2, c8621n, m25359a(str, c8621n, c9147bu));
        Objects.requireNonNull(c9147bu, "errorValue");
        this.f31395a = c9147bu;
    }
}
