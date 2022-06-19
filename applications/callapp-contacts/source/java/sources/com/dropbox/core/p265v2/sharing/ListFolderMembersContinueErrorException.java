package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ListFolderMembersContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException.class */
public class ListFolderMembersContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9017af f31375a;

    public ListFolderMembersContinueErrorException(String str, String str2, C8621n c8621n, C9017af c9017af) {
        super(str2, c8621n, m25359a(str, c8621n, c9017af));
        Objects.requireNonNull(c9017af, "errorValue");
        this.f31375a = c9017af;
    }
}
