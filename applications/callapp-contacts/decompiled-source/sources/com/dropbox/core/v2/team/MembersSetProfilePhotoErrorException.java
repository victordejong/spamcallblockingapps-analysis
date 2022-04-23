package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/MembersSetProfilePhotoErrorException.class */
public class MembersSetProfilePhotoErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final an f18768a;

    public MembersSetProfilePhotoErrorException(String str, String str2, n nVar, an anVar) {
        super(str2, nVar, a(str, nVar, anVar));
        Objects.requireNonNull(anVar, "errorValue");
        this.f18768a = anVar;
    }
}
