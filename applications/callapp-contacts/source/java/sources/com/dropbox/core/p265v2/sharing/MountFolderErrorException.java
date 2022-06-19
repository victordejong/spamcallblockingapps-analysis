package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.MountFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/MountFolderErrorException.class */
public class MountFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9040an f31379a;

    public MountFolderErrorException(String str, String str2, C8621n c8621n, C9040an c9040an) {
        super(str2, c8621n, m25359a(str, c8621n, c9040an));
        Objects.requireNonNull(c9040an, "errorValue");
        this.f31379a = c9040an;
    }
}
