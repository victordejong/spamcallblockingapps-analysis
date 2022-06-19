package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeDeviceSessionErrorException.class */
public class RevokeDeviceSessionErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9243as f31843a;

    public RevokeDeviceSessionErrorException(String str, String str2, C8621n c8621n, EnumC9243as enumC9243as) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9243as));
        Objects.requireNonNull(enumC9243as, "errorValue");
        this.f31843a = enumC9243as;
    }
}
