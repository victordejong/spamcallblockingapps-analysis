package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.sharing.UnshareFolderErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnshareFolderErrorException.class */
public class UnshareFolderErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9139bs f31393a;

    public UnshareFolderErrorException(String str, String str2, C8621n c8621n, C9139bs c9139bs) {
        super(str2, c8621n, m25359a(str, c8621n, c9139bs));
        Objects.requireNonNull(c9139bs, "errorValue");
        this.f31393a = c9139bs;
    }
}
