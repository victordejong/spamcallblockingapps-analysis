package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersSetProfilePhotoErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetProfilePhotoErrorException.class */
public class MembersSetProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a */
    public final C9235an f31838a;

    public MembersSetProfilePhotoErrorException(String str, String str2, C8621n c8621n, C9235an c9235an) {
        super(str2, c8621n, m25359a(str, c8621n, c9235an));
        Objects.requireNonNull(c9235an, "errorValue");
        this.f31838a = c9235an;
    }
}
