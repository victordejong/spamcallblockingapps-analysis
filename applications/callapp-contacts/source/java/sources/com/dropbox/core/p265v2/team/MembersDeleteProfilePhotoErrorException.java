package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.MembersDeleteProfilePhotoErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersDeleteProfilePhotoErrorException.class */
public class MembersDeleteProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9226ae f31829a;

    public MembersDeleteProfilePhotoErrorException(String str, String str2, C8621n c8621n, EnumC9226ae enumC9226ae) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9226ae));
        Objects.requireNonNull(enumC9226ae, "errorValue");
        this.f31829a = enumC9226ae;
    }
}
