package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.UpdateFolderMemberErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UpdateFolderMemberErrorException.class */
public class UpdateFolderMemberErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9143bt f31394a;

    public UpdateFolderMemberErrorException(String str, String str2, C8621n c8621n, C9143bt c9143bt) {
        super(str2, c8621n, m25359a(str, c8621n, c9143bt));
        Objects.requireNonNull(c9143bt, "errorValue");
        this.f31394a = c9143bt;
    }
}
