package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ListSharedLinksErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListSharedLinksErrorException.class */
public class ListSharedLinksErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9022ah f31377a;

    public ListSharedLinksErrorException(String str, String str2, C8621n c8621n, C9022ah c9022ah) {
        super(str2, c8621n, m25359a(str, c8621n, c9022ah));
        Objects.requireNonNull(c9022ah, "errorValue");
        this.f31377a = c9022ah;
    }
}
