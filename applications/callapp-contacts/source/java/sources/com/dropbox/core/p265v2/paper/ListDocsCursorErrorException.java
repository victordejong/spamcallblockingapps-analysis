package com.dropbox.core.p265v2.paper;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.paper.ListDocsCursorErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/ListDocsCursorErrorException.class */
public class ListDocsCursorErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8984c f31344a;

    public ListDocsCursorErrorException(String str, String str2, C8621n c8621n, C8984c c8984c) {
        super(str2, c8621n, m25359a(str, c8621n, c8984c));
        Objects.requireNonNull(c8984c, "errorValue");
        this.f31344a = c8984c;
    }
}
