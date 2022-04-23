package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/RemoveFolderMemberErrorException.class */
public class RemoveFolderMemberErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final at f18426a;

    public RemoveFolderMemberErrorException(String str, String str2, n nVar, at atVar) {
        super(str2, nVar, a(str, nVar, atVar));
        Objects.requireNonNull(atVar, "errorValue");
        this.f18426a = atVar;
    }
}
