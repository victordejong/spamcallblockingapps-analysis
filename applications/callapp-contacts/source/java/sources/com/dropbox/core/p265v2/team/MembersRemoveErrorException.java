package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersRemoveErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersRemoveErrorException.class */
public class MembersRemoveErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9231aj f31834a;

    public MembersRemoveErrorException(String str, String str2, C8621n c8621n, EnumC9231aj enumC9231aj) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9231aj));
        Objects.requireNonNull(enumC9231aj, "errorValue");
        this.f31834a = enumC9231aj;
    }
}
