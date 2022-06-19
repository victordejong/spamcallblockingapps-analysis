package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersRecoverErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersRecoverErrorException.class */
public class MembersRecoverErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9230ai f31833a;

    public MembersRecoverErrorException(String str, String str2, C8621n c8621n, EnumC9230ai enumC9230ai) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9230ai));
        Objects.requireNonNull(enumC9230ai, "errorValue");
        this.f31833a = enumC9230ai;
    }
}
