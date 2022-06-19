package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.DocLookupErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/DocLookupErrorException.class */
public class DocLookupErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8983b f31343a;

    public DocLookupErrorException(String str, String str2, C8621n c8621n, EnumC8983b enumC8983b) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8983b));
        Objects.requireNonNull(enumC8983b, "errorValue");
        this.f31343a = enumC8983b;
    }
}
