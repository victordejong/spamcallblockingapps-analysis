package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/PropertiesSearchContinueErrorException.class */
public class PropertiesSearchContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8758g f30866a;

    public PropertiesSearchContinueErrorException(String str, String str2, C8621n c8621n, EnumC8758g enumC8758g) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8758g));
        Objects.requireNonNull(enumC8758g, "errorValue");
        this.f30866a = enumC8758g;
    }
}
