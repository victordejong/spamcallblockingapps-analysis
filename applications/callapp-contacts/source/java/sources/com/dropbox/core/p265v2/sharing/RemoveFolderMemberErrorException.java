package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.RemoveFolderMemberErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RemoveFolderMemberErrorException.class */
public class RemoveFolderMemberErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9062at f31383a;

    public RemoveFolderMemberErrorException(String str, String str2, C8621n c8621n, C9062at c9062at) {
        super(str2, c8621n, m25359a(str, c8621n, c9062at));
        Objects.requireNonNull(c9062at, "errorValue");
        this.f31383a = c9062at;
    }
}
