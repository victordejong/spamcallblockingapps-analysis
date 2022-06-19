package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.RelinquishFolderMembershipErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException.class */
public class RelinquishFolderMembershipErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9054ar f31381a;

    public RelinquishFolderMembershipErrorException(String str, String str2, C8621n c8621n, C9054ar c9054ar) {
        super(str2, c8621n, m25359a(str, c8621n, c9054ar));
        Objects.requireNonNull(c9054ar, "errorValue");
        this.f31381a = c9054ar;
    }
}
