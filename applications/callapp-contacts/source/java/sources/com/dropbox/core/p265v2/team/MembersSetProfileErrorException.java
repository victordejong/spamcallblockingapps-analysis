package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersSetProfileErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetProfileErrorException.class */
public class MembersSetProfileErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9234am f31837a;

    public MembersSetProfileErrorException(String str, String str2, C8621n c8621n, EnumC9234am enumC9234am) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9234am));
        Objects.requireNonNull(enumC9234am, "errorValue");
        this.f31837a = enumC9234am;
    }
}
