package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.RemoveFileMemberErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RemoveFileMemberErrorException.class */
public class RemoveFileMemberErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9058as f31382a;

    public RemoveFileMemberErrorException(String str, String str2, C8621n c8621n, C9058as c9058as) {
        super(str2, c8621n, m25359a(str, c8621n, c9058as));
        Objects.requireNonNull(c9058as, "errorValue");
        this.f31382a = c9058as;
    }
}
