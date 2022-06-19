package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.UpdatePropertiesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException.class */
public class UpdatePropertiesErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8779n f30870a;

    public UpdatePropertiesErrorException(String str, String str2, C8621n c8621n, C8779n c8779n) {
        super(str2, c8621n, m25359a(str, c8621n, c8779n));
        Objects.requireNonNull(c8779n, "errorValue");
        this.f30870a = c8779n;
    }
}
