package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.fileproperties.ModifyTemplateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/ModifyTemplateErrorException.class */
public class ModifyTemplateErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8754f f30865a;

    public ModifyTemplateErrorException(String str, String str2, C8621n c8621n, C8754f c8754f) {
        super(str2, c8621n, m25359a(str, c8621n, c8754f));
        Objects.requireNonNull(c8754f, "errorValue");
        this.f30865a = c8754f;
    }
}
