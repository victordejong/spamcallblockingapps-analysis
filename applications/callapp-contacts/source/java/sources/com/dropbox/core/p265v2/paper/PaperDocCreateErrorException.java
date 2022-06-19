package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.PaperDocCreateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/PaperDocCreateErrorException.class */
public class PaperDocCreateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8995f f31346a;

    public PaperDocCreateErrorException(String str, String str2, C8621n c8621n, EnumC8995f enumC8995f) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8995f));
        Objects.requireNonNull(enumC8995f, "errorValue");
        this.f31346a = enumC8995f;
    }
}
