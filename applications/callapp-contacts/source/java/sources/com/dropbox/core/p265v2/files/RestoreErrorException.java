package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.RestoreErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/RestoreErrorException.class */
public class RestoreErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8844aq f30985a;

    public RestoreErrorException(String str, String str2, C8621n c8621n, C8844aq c8844aq) {
        super(str2, c8621n, m25359a(str, c8621n, c8844aq));
        Objects.requireNonNull(c8844aq, "errorValue");
        this.f30985a = c8844aq;
    }
}
