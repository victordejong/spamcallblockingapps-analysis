package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.clouddocs.GetMetadataErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/GetMetadataErrorException.class */
public class GetMetadataErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8707d f30821a;

    public GetMetadataErrorException(String str, String str2, C8621n c8621n, C8707d c8707d) {
        super(str2, c8621n, m25359a(str, c8621n, c8707d));
        Objects.requireNonNull(c8707d, "errorValue");
        this.f30821a = c8707d;
    }
}
