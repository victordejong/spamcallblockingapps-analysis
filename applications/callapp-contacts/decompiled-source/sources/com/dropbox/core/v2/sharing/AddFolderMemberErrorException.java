package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/AddFolderMemberErrorException.class */
public class AddFolderMemberErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final e f18408a;

    public AddFolderMemberErrorException(String str, String str2, n nVar, e eVar) {
        super(str2, nVar, a(str, nVar, eVar));
        Objects.requireNonNull(eVar, "errorValue");
        this.f18408a = eVar;
    }
}
