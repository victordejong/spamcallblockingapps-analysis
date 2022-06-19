package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ListFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListFolderErrorException.class */
public class ListFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8802ac f30979a;

    public ListFolderErrorException(String str, String str2, C8621n c8621n, C8802ac c8802ac) {
        super(str2, c8621n, m25359a(str, c8621n, c8802ac));
        Objects.requireNonNull(c8802ac, "errorValue");
        this.f30979a = c8802ac;
    }
}
