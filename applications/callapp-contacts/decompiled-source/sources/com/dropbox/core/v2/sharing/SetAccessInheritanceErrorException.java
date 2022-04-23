package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/SetAccessInheritanceErrorException.class */
public class SetAccessInheritanceErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ax f18428a;

    public SetAccessInheritanceErrorException(String str, String str2, n nVar, ax axVar) {
        super(str2, nVar, a(str, nVar, axVar));
        Objects.requireNonNull(axVar, "errorValue");
        this.f18428a = axVar;
    }
}
