package com.dropbox.core.v2.contacts;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/DeleteManualContactsErrorException.class */
public class DeleteManualContactsErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final b f18007a;

    public DeleteManualContactsErrorException(String str, String str2, n nVar, b bVar) {
        super(str2, nVar, a(str, nVar, bVar));
        Objects.requireNonNull(bVar, "errorValue");
        this.f18007a = bVar;
    }
}
