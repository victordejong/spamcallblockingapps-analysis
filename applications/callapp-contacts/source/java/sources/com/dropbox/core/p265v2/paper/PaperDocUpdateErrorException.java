package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.PaperDocUpdateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/PaperDocUpdateErrorException.class */
public class PaperDocUpdateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8996g f31347a;

    public PaperDocUpdateErrorException(String str, String str2, C8621n c8621n, EnumC8996g enumC8996g) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8996g));
        Objects.requireNonNull(enumC8996g, "errorValue");
        this.f31347a = enumC8996g;
    }
}
