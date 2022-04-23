package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/SaveUrlErrorException.class */
public class SaveUrlErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final as f18111a;

    public SaveUrlErrorException(String str, String str2, n nVar, as asVar) {
        super(str2, nVar, a(str, nVar, asVar));
        Objects.requireNonNull(asVar, "errorValue");
        this.f18111a = asVar;
    }
}
