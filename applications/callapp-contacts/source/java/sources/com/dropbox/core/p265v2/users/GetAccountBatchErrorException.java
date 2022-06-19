package com.dropbox.core.p265v2.users;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.users.GetAccountBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/GetAccountBatchErrorException.class */
public class GetAccountBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9324b f31951a;

    public GetAccountBatchErrorException(String str, String str2, C8621n c8621n, C9324b c9324b) {
        super(str2, c8621n, m25359a(str, c8621n, c9324b));
        Objects.requireNonNull(c9324b, "errorValue");
        this.f31951a = c9324b;
    }
}
