package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ListFolderContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListFolderContinueErrorException.class */
public class ListFolderContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8798ab f30978a;

    public ListFolderContinueErrorException(String str, String str2, C8621n c8621n, C8798ab c8798ab) {
        super(str2, c8621n, m25359a(str, c8621n, c8798ab));
        Objects.requireNonNull(c8798ab, "errorValue");
        this.f30978a = c8798ab;
    }
}
