package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.ListUsersCursorErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/ListUsersCursorErrorException.class */
public class ListUsersCursorErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8988d f31345a;

    public ListUsersCursorErrorException(String str, String str2, C8621n c8621n, C8988d c8988d) {
        super(str2, c8621n, m25359a(str, c8621n, c8988d));
        Objects.requireNonNull(c8988d, "errorValue");
        this.f31345a = c8988d;
    }
}
