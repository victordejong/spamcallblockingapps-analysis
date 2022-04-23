package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException.class */
public class CreateSharedLinkWithSettingsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final k f18410a;

    public CreateSharedLinkWithSettingsErrorException(String str, String str2, n nVar, k kVar) {
        super(str2, nVar, a(str, nVar, kVar));
        Objects.requireNonNull(kVar, "errorValue");
        this.f18410a = kVar;
    }
}
