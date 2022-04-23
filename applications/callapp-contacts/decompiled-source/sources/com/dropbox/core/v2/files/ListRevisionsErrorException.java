package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListRevisionsErrorException.class */
public class ListRevisionsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final af f18105a;

    public ListRevisionsErrorException(String str, String str2, n nVar, af afVar) {
        super(str2, nVar, a(str, nVar, afVar));
        Objects.requireNonNull(afVar, "errorValue");
        this.f18105a = afVar;
    }
}
