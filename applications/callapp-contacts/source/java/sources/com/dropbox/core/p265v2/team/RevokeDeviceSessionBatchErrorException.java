package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException.class */
public class RevokeDeviceSessionBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9242ar f31842a;

    public RevokeDeviceSessionBatchErrorException(String str, String str2, C8621n c8621n, EnumC9242ar enumC9242ar) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9242ar));
        Objects.requireNonNull(enumC9242ar, "errorValue");
        this.f31842a = enumC9242ar;
    }
}
