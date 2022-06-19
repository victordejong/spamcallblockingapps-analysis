package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.TemplateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/TemplateErrorException.class */
public class TemplateErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8771l f30869a;

    public TemplateErrorException(String str, String str2, C8621n c8621n, C8771l c8771l) {
        super(str2, c8621n, m25359a(str, c8621n, c8771l));
        Objects.requireNonNull(c8771l, "errorValue");
        this.f30869a = c8771l;
    }
}
