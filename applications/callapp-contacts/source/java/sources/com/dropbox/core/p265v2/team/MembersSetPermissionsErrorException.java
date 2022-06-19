package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersSetPermissionsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetPermissionsErrorException.class */
public class MembersSetPermissionsErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9233al f31836a;

    public MembersSetPermissionsErrorException(String str, String str2, C8621n c8621n, EnumC9233al enumC9233al) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9233al));
        Objects.requireNonNull(enumC9233al, "errorValue");
        this.f31836a = enumC9233al;
    }
}
