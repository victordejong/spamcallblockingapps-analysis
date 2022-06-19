package com.dropbox.core.p265v2.async;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.async.PollErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/async/PollErrorException.class */
public class PollErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8664a f30747a;

    public PollErrorException(String str, String str2, C8621n c8621n, EnumC8664a enumC8664a) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8664a));
        Objects.requireNonNull(enumC8664a, "errorValue");
        this.f30747a = enumC8664a;
    }
}
