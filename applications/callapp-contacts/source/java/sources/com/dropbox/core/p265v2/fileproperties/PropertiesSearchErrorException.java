package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/PropertiesSearchErrorException.class */
public class PropertiesSearchErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8759h f30867a;

    public PropertiesSearchErrorException(String str, String str2, C8621n c8621n, C8759h c8759h) {
        super(str2, c8621n, m25359a(str, c8621n, c8759h));
        Objects.requireNonNull(c8759h, "errorValue");
        this.f30867a = c8759h;
    }
}
