package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.DeleteErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/DeleteErrorException.class */
public class DeleteErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8925f f30970a;

    public DeleteErrorException(String str, String str2, C8621n c8621n, C8925f c8925f) {
        super(str2, c8621n, m25359a(str, c8621n, c8925f));
        Objects.requireNonNull(c8925f, "errorValue");
        this.f30970a = c8925f;
    }
}
