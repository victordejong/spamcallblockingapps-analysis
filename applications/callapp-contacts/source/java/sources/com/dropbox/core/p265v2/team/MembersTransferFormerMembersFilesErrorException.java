package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersTransferFormerMembersFilesErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersTransferFormerMembersFilesErrorException.class */
public class MembersTransferFormerMembersFilesErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9240ap f31840a;

    public MembersTransferFormerMembersFilesErrorException(String str, String str2, C8621n c8621n, EnumC9240ap enumC9240ap) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9240ap));
        Objects.requireNonNull(enumC9240ap, "errorValue");
        this.f31840a = enumC9240ap;
    }
}
