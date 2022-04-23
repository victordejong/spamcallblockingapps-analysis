package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ListFolderErrorException.class */
public class ListFolderErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ac f18103a;

    public ListFolderErrorException(String str, String str2, n nVar, ac acVar) {
        super(str2, nVar, a(str, nVar, acVar));
        Objects.requireNonNull(acVar, "errorValue");
        this.f18103a = acVar;
    }
}
