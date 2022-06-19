package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException.class */
public class RevokeLinkedAppBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9244at f31844a;

    public RevokeLinkedAppBatchErrorException(String str, String str2, C8621n c8621n, EnumC9244at enumC9244at) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9244at));
        Objects.requireNonNull(enumC9244at, "errorValue");
        this.f31844a = enumC9244at;
    }
}
