package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.SaveUrlErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/SaveUrlErrorException.class */
public class SaveUrlErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8852as f30987a;

    public SaveUrlErrorException(String str, String str2, C8621n c8621n, C8852as c8852as) {
        super(str2, c8621n, m25359a(str, c8621n, c8852as));
        Objects.requireNonNull(c8852as, "errorValue");
        this.f30987a = c8852as;
    }
}
