package com.dropbox.core.v2.account;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/SetProfilePhotoErrorException.class */
public class SetProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final b f17916a;

    public SetProfilePhotoErrorException(String str, String str2, n nVar, b bVar) {
        super(str2, nVar, a(str, nVar, bVar));
        Objects.requireNonNull(bVar, "errorValue");
        this.f17916a = bVar;
    }
}
