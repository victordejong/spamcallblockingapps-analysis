package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/PaperDocUpdateErrorException.class */
public class PaperDocUpdateErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final g f18391a;

    public PaperDocUpdateErrorException(String str, String str2, n nVar, g gVar) {
        super(str2, nVar, a(str, nVar, gVar));
        Objects.requireNonNull(gVar, "errorValue");
        this.f18391a = gVar;
    }
}
