package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/ModifyTemplateErrorException.class */
public class ModifyTemplateErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final f f18016a;

    public ModifyTemplateErrorException(String str, String str2, n nVar, f fVar) {
        super(str2, nVar, a(str, nVar, fVar));
        Objects.requireNonNull(fVar, "errorValue");
        this.f18016a = fVar;
    }
}
