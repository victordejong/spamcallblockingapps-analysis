package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/PreviewErrorException.class */
public class PreviewErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ao f18107a;

    public PreviewErrorException(String str, String str2, n nVar, ao aoVar) {
        super(str2, nVar, a(str, nVar, aoVar));
        Objects.requireNonNull(aoVar, "errorValue");
        this.f18107a = aoVar;
    }
}
