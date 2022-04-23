package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException.class */
public class ListFileRequestsContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final g f18088a;

    public ListFileRequestsContinueErrorException(String str, String str2, n nVar, g gVar) {
        super(str2, nVar, a(str, nVar, gVar));
        Objects.requireNonNull(gVar, "errorValue");
        this.f18088a = gVar;
    }
}
