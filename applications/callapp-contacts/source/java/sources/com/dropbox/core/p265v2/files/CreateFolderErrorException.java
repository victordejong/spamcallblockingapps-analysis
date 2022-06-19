package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.CreateFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/CreateFolderErrorException.class */
public class CreateFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8918c f30969a;

    public CreateFolderErrorException(String str, String str2, C8621n c8621n, C8918c c8918c) {
        super(str2, c8621n, m25359a(str, c8621n, c8918c));
        Objects.requireNonNull(c8918c, "errorValue");
        this.f30969a = c8918c;
    }
}
