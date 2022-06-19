package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.AddFolderMemberErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/AddFolderMemberErrorException.class */
public class AddFolderMemberErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9161e f31365a;

    public AddFolderMemberErrorException(String str, String str2, C8621n c8621n, C9161e c9161e) {
        super(str2, c8621n, m25359a(str, c8621n, c9161e));
        Objects.requireNonNull(c9161e, "errorValue");
        this.f31365a = c9161e;
    }
}
