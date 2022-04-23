package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersDeleteProfilePhotoErrorException.class */
public class MembersDeleteProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ae f18759a;

    public MembersDeleteProfilePhotoErrorException(String str, String str2, n nVar, ae aeVar) {
        super(str2, nVar, a(str, nVar, aeVar));
        Objects.requireNonNull(aeVar, "errorValue");
        this.f18759a = aeVar;
    }
}
