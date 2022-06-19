package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.GetCopyReferenceErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetCopyReferenceErrorException.class */
public class GetCopyReferenceErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8967v f30974a;

    public GetCopyReferenceErrorException(String str, String str2, C8621n c8621n, C8967v c8967v) {
        super(str2, c8621n, m25359a(str, c8621n, c8967v));
        Objects.requireNonNull(c8967v, "errorValue");
        this.f30974a = c8967v;
    }
}
