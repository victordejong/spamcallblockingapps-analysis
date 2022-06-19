package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ListFolderLongpollErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListFolderLongpollErrorException.class */
public class ListFolderLongpollErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8806ad f30980a;

    public ListFolderLongpollErrorException(String str, String str2, C8621n c8621n, EnumC8806ad enumC8806ad) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8806ad));
        Objects.requireNonNull(enumC8806ad, "errorValue");
        this.f30980a = enumC8806ad;
    }
}
