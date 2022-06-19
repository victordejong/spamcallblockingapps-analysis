package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ListFoldersContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFoldersContinueErrorException.class */
public class ListFoldersContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9021ag f31376a;

    public ListFoldersContinueErrorException(String str, String str2, C8621n c8621n, EnumC9021ag enumC9021ag) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9021ag));
        Objects.requireNonNull(enumC9021ag, "errorValue");
        this.f31376a = enumC9021ag;
    }
}
