package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.AddFileMemberErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/AddFileMemberErrorException.class */
public class AddFileMemberErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9157d f31364a;

    public AddFileMemberErrorException(String str, String str2, C8621n c8621n, C9157d c9157d) {
        super(str2, c8621n, m25359a(str, c8621n, c9157d));
        Objects.requireNonNull(c9157d, "errorValue");
        this.f31364a = c9157d;
    }
}
