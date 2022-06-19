package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.UnmountFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnmountFolderErrorException.class */
public class UnmountFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9131bq f31391a;

    public UnmountFolderErrorException(String str, String str2, C8621n c8621n, C9131bq c9131bq) {
        super(str2, c8621n, m25359a(str, c8621n, c9131bq));
        Objects.requireNonNull(c9131bq, "errorValue");
        this.f31391a = c9131bq;
    }
}
