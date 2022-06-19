package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ListFileMembersContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFileMembersContinueErrorException.class */
public class ListFileMembersContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9005ac f31372a;

    public ListFileMembersContinueErrorException(String str, String str2, C8621n c8621n, C9005ac c9005ac) {
        super(str2, c8621n, m25359a(str, c8621n, c9005ac));
        Objects.requireNonNull(c9005ac, "errorValue");
        this.f31372a = c9005ac;
    }
}
