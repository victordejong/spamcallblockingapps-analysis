package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException.class */
public class CloudDocsAccessErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final a f17972a;

    public CloudDocsAccessErrorException(String str, String str2, n nVar, a aVar) {
        super(str2, nVar, a(str, nVar, aVar));
        Objects.requireNonNull(aVar, "errorValue");
        this.f17972a = aVar;
    }
}
