package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.PreviewErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/PreviewErrorException.class */
public class PreviewErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8836ao f30983a;

    public PreviewErrorException(String str, String str2, C8621n c8621n, C8836ao c8836ao) {
        super(str2, c8621n, m25359a(str, c8621n, c8836ao));
        Objects.requireNonNull(c8836ao, "errorValue");
        this.f30983a = c8836ao;
    }
}
