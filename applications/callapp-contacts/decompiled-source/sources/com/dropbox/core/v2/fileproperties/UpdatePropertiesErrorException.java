package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException.class */
public class UpdatePropertiesErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final n f18021a;

    public UpdatePropertiesErrorException(String str, String str2, n nVar, n nVar2) {
        super(str2, nVar, a(str, nVar, nVar2));
        Objects.requireNonNull(nVar2, "errorValue");
        this.f18021a = nVar2;
    }
}
