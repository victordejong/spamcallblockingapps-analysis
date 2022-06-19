package com.dropbox.core.p265v2.files;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/GetThumbnailBatchErrorException.class */
public class GetThumbnailBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC8979y f30977a;

    public GetThumbnailBatchErrorException(String str, String str2, C8621n c8621n, EnumC8979y enumC8979y) {
        super(str2, c8621n, m25359a(str, c8621n, enumC8979y));
        Objects.requireNonNull(enumC8979y, "errorValue");
        this.f30977a = enumC8979y;
    }
}
