package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.RelinquishFileMembershipErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException.class */
public class RelinquishFileMembershipErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9050aq f31380a;

    public RelinquishFileMembershipErrorException(String str, String str2, C8621n c8621n, C9050aq c9050aq) {
        super(str2, c8621n, m25359a(str, c8621n, c9050aq));
        Objects.requireNonNull(c9050aq, "errorValue");
        this.f31380a = c9050aq;
    }
}
