package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersGetInfoErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersGetInfoErrorException.class */
public class MembersGetInfoErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9227af f31830a;

    public MembersGetInfoErrorException(String str, String str2, C8621n c8621n, EnumC9227af enumC9227af) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9227af));
        Objects.requireNonNull(enumC9227af, "errorValue");
        this.f31830a = enumC9227af;
    }
}
