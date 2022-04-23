package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/AddFileMemberErrorException.class */
public class AddFileMemberErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final d f18407a;

    public AddFileMemberErrorException(String str, String str2, n nVar, d dVar) {
        super(str2, nVar, a(str, nVar, dVar));
        Objects.requireNonNull(dVar, "errorValue");
        this.f18407a = dVar;
    }
}
