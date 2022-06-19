package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.ListFilesContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFilesContinueErrorException.class */
public class ListFilesContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9013ae f31374a;

    public ListFilesContinueErrorException(String str, String str2, C8621n c8621n, C9013ae c9013ae) {
        super(str2, c8621n, m25359a(str, c8621n, c9013ae));
        Objects.requireNonNull(c9013ae, "errorValue");
        this.f31374a = c9013ae;
    }
}
