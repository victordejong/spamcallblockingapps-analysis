package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.FeaturesGetValuesBatchErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException.class */
public class FeaturesGetValuesBatchErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9291g f31805a;

    public FeaturesGetValuesBatchErrorException(String str, String str2, C8621n c8621n, EnumC9291g enumC9291g) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9291g));
        Objects.requireNonNull(enumC9291g, "errorValue");
        this.f31805a = enumC9291g;
    }
}
