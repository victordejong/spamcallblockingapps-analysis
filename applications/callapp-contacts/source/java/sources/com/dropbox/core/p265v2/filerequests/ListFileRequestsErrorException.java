package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/ListFileRequestsErrorException.class */
public class ListFileRequestsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8790h f30965a;

    public ListFileRequestsErrorException(String str, String str2, C8621n c8621n, EnumC8790h enumC8790h) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8790h));
        Objects.requireNonNull(enumC8790h, "errorValue");
        this.f30965a = enumC8790h;
    }
}
