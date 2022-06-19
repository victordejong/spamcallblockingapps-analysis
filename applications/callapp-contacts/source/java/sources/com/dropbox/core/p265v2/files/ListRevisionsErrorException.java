package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.ListRevisionsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListRevisionsErrorException.class */
public class ListRevisionsErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8809af f30981a;

    public ListRevisionsErrorException(String str, String str2, C8621n c8621n, C8809af c8809af) {
        super(str2, c8621n, m25359a(str, c8621n, c8809af));
        Objects.requireNonNull(c8809af, "errorValue");
        this.f30981a = c8809af;
    }
}
