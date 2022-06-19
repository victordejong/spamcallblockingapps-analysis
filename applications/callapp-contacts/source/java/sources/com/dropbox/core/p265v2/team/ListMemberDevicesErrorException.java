package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListMemberDevicesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMemberDevicesErrorException.class */
public class ListMemberDevicesErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9316z f31824a;

    public ListMemberDevicesErrorException(String str, String str2, C8621n c8621n, EnumC9316z enumC9316z) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9316z));
        Objects.requireNonNull(enumC9316z, "errorValue");
        this.f31824a = enumC9316z;
    }
}
