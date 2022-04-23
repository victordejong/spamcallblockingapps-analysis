package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFileMembersErrorException.class */
public class ListFileMembersErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ad f18416a;

    public ListFileMembersErrorException(String str, String str2, n nVar, ad adVar) {
        super(str2, nVar, a(str, nVar, adVar));
        Objects.requireNonNull(adVar, "errorValue");
        this.f18416a = adVar;
    }
}
