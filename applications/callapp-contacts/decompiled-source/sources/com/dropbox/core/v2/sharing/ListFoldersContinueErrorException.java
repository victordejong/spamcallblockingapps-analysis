package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFoldersContinueErrorException.class */
public class ListFoldersContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ag f18419a;

    public ListFoldersContinueErrorException(String str, String str2, n nVar, ag agVar) {
        super(str2, nVar, a(str, nVar, agVar));
        Objects.requireNonNull(agVar, "errorValue");
        this.f18419a = agVar;
    }
}
