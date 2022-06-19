package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ShareFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ShareFolderErrorException.class */
public class ShareFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9077ay f31386a;

    public ShareFolderErrorException(String str, String str2, C8621n c8621n, C9077ay c9077ay) {
        super(str2, c8621n, m25359a(str, c8621n, c9077ay));
        Objects.requireNonNull(c9077ay, "errorValue");
        this.f31386a = c9077ay;
    }
}
