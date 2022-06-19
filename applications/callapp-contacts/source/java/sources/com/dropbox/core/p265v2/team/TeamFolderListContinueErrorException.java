package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.TeamFolderListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/TeamFolderListContinueErrorException.class */
public class TeamFolderListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9266bb f31850a;

    public TeamFolderListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9266bb enumC9266bb) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9266bb));
        Objects.requireNonNull(enumC9266bb, "errorValue");
        this.f31850a = enumC9266bb;
    }
}
