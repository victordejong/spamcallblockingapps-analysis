package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException.class */
public class FeaturesGetValuesBatchErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final g f18735a;

    public FeaturesGetValuesBatchErrorException(String str, String str2, n nVar, g gVar) {
        super(str2, nVar, a(str, nVar, gVar));
        Objects.requireNonNull(gVar, "errorValue");
        this.f18735a = gVar;
    }
}
