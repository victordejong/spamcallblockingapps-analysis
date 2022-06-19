package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.CountFileRequestsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/CountFileRequestsErrorException.class */
public class CountFileRequestsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8783a f30959a;

    public CountFileRequestsErrorException(String str, String str2, C8621n c8621n, EnumC8783a enumC8783a) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8783a));
        Objects.requireNonNull(enumC8783a, "errorValue");
        this.f30959a = enumC8783a;
    }
}
