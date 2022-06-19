package com.dropbox.core.p265v2.filerequests;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException.class */
public class ListFileRequestsContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8789g f30964a;

    public ListFileRequestsContinueErrorException(String str, String str2, C8621n c8621n, EnumC8789g enumC8789g) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8789g));
        Objects.requireNonNull(enumC8789g, "errorValue");
        this.f30964a = enumC8789g;
    }
}
