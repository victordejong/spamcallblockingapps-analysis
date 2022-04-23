package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnmountFolderErrorException.class */
public class UnmountFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bq f18434a;

    public UnmountFolderErrorException(String str, String str2, n nVar, bq bqVar) {
        super(str2, nVar, a(str, nVar, bqVar));
        Objects.requireNonNull(bqVar, "errorValue");
        this.f18434a = bqVar;
    }
}
