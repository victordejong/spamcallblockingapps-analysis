package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/UnshareFolderErrorException.class */
public class UnshareFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bs f18436a;

    public UnshareFolderErrorException(String str, String str2, n nVar, bs bsVar) {
        super(str2, nVar, a(str, nVar, bsVar));
        Objects.requireNonNull(bsVar, "errorValue");
        this.f18436a = bsVar;
    }
}
