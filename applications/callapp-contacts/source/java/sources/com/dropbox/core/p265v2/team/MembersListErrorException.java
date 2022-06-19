package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersListErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersListErrorException.class */
public class MembersListErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9229ah f31832a;

    public MembersListErrorException(String str, String str2, C8621n c8621n, EnumC9229ah enumC9229ah) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9229ah));
        Objects.requireNonNull(enumC9229ah, "errorValue");
        this.f31832a = enumC9229ah;
    }
}
