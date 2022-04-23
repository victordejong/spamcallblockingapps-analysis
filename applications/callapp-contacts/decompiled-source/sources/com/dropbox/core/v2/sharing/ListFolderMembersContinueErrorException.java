package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException.class */
public class ListFolderMembersContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final af f18418a;

    public ListFolderMembersContinueErrorException(String str, String str2, n nVar, af afVar) {
        super(str2, nVar, a(str, nVar, afVar));
        Objects.requireNonNull(afVar, "errorValue");
        this.f18418a = afVar;
    }
}
