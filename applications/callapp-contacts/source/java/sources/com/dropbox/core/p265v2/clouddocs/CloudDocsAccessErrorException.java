package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.clouddocs.CloudDocsAccessErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException.class */
public class CloudDocsAccessErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8702a f30820a;

    public CloudDocsAccessErrorException(String str, String str2, C8621n c8621n, EnumC8702a enumC8702a) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8702a));
        Objects.requireNonNull(enumC8702a, "errorValue");
        this.f30820a = enumC8702a;
    }
}
