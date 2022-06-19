package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersListContinueErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersListContinueErrorException.class */
public class MembersListContinueErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9228ag f31831a;

    public MembersListContinueErrorException(String str, String str2, C8621n c8621n, EnumC9228ag enumC9228ag) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9228ag));
        Objects.requireNonNull(enumC9228ag, "errorValue");
        this.f31831a = enumC9228ag;
    }
}
