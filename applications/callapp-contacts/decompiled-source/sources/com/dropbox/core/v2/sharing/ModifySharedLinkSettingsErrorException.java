package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException.class */
public class ModifySharedLinkSettingsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final am f18421a;

    public ModifySharedLinkSettingsErrorException(String str, String str2, n nVar, am amVar) {
        super(str2, nVar, a(str, nVar, amVar));
        Objects.requireNonNull(amVar, "errorValue");
        this.f18421a = amVar;
    }
}
