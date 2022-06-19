package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListMembersDevicesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListMembersDevicesErrorException.class */
public class ListMembersDevicesErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9223ab f31826a;

    public ListMembersDevicesErrorException(String str, String str2, C8621n c8621n, EnumC9223ab enumC9223ab) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9223ab));
        Objects.requireNonNull(enumC9223ab, "errorValue");
        this.f31826a = enumC9223ab;
    }
}
