package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.SearchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/SearchErrorException.class */
public class SearchErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8856at f30988a;

    public SearchErrorException(String str, String str2, C8621n c8621n, C8856at c8856at) {
        super(str2, c8621n, m25359a(str, c8621n, c8856at));
        Objects.requireNonNull(c8856at, "errorValue");
        this.f30988a = c8856at;
    }
}
