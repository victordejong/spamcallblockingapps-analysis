package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.GroupSelectorErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/GroupSelectorErrorException.class */
public class GroupSelectorErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9303m f31811a;

    public GroupSelectorErrorException(String str, String str2, C8621n c8621n, EnumC9303m enumC9303m) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9303m));
        Objects.requireNonNull(enumC9303m, "errorValue");
        this.f31811a = enumC9303m;
    }
}
