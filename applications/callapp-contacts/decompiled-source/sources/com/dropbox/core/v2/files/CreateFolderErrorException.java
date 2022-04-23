package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/CreateFolderErrorException.class */
public class CreateFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final c f18093a;

    public CreateFolderErrorException(String str, String str2, n nVar, c cVar) {
        super(str2, nVar, a(str, nVar, cVar));
        Objects.requireNonNull(cVar, "errorValue");
        this.f18093a = cVar;
    }
}
