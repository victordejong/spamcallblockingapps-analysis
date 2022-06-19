package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.PaperFolderCreateErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/PaperFolderCreateErrorException.class */
public class PaperFolderCreateErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8997h f31348a;

    public PaperFolderCreateErrorException(String str, String str2, C8621n c8621n, EnumC8997h enumC8997h) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8997h));
        Objects.requireNonNull(enumC8997h, "errorValue");
        this.f31348a = enumC8997h;
    }
}
