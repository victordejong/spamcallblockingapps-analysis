package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.AddPropertiesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/AddPropertiesErrorException.class */
public class AddPropertiesErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8738a f30863a;

    public AddPropertiesErrorException(String str, String str2, C8621n c8621n, C8738a c8738a) {
        super(str2, c8621n, m25359a(str, c8621n, c8738a));
        Objects.requireNonNull(c8738a, "errorValue");
        this.f30863a = c8738a;
    }
}
