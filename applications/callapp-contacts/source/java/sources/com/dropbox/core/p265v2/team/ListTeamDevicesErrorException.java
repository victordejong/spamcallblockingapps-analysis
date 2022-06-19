package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.ListTeamDevicesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ListTeamDevicesErrorException.class */
public class ListTeamDevicesErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9225ad f31828a;

    public ListTeamDevicesErrorException(String str, String str2, C8621n c8621n, EnumC9225ad enumC9225ad) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9225ad));
        Objects.requireNonNull(enumC9225ad, "errorValue");
        this.f31828a = enumC9225ad;
    }
}
