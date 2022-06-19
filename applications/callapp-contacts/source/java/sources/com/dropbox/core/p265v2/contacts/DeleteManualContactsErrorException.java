package com.dropbox.core.p265v2.contacts;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.contacts.DeleteManualContactsErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/DeleteManualContactsErrorException.class */
public class DeleteManualContactsErrorException extends DbxApiException {

    /* renamed from: a */
    public final C8733b f30856a;

    public DeleteManualContactsErrorException(String str, String str2, C8621n c8621n, C8733b c8733b) {
        super(str2, c8621n, m25359a(str, c8621n, c8733b));
        Objects.requireNonNull(c8733b, "errorValue");
        this.f30856a = c8733b;
    }
}
