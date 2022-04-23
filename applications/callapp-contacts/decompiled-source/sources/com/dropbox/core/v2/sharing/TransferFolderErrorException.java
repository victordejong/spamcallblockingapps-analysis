package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/TransferFolderErrorException.class */
public class TransferFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final bp f18433a;

    public TransferFolderErrorException(String str, String str2, n nVar, bp bpVar) {
        super(str2, nVar, a(str, nVar, bpVar));
        Objects.requireNonNull(bpVar, "errorValue");
        this.f18433a = bpVar;
    }
}
