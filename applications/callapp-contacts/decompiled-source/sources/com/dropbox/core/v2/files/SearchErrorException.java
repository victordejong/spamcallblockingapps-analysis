package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/SearchErrorException.class */
public class SearchErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final at f18112a;

    public SearchErrorException(String str, String str2, n nVar, at atVar) {
        super(str2, nVar, a(str, nVar, atVar));
        Objects.requireNonNull(atVar, "errorValue");
        this.f18112a = atVar;
    }
}
