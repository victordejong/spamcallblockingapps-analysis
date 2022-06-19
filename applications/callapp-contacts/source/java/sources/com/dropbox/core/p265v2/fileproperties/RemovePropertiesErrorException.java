package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.RemovePropertiesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/RemovePropertiesErrorException.class */
public class RemovePropertiesErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8767k f30868a;

    public RemovePropertiesErrorException(String str, String str2, C8621n c8621n, C8767k c8767k) {
        super(str2, c8621n, m25359a(str, c8621n, c8767k));
        Objects.requireNonNull(c8767k, "errorValue");
        this.f30868a = c8767k;
    }
}
