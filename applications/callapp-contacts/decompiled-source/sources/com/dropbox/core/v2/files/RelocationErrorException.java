package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/RelocationErrorException.class */
public class RelocationErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ap f18108a;

    public RelocationErrorException(String str, String str2, n nVar, ap apVar) {
        super(str2, nVar, a(str, nVar, apVar));
        Objects.requireNonNull(apVar, "errorValue");
        this.f18108a = apVar;
    }
}
