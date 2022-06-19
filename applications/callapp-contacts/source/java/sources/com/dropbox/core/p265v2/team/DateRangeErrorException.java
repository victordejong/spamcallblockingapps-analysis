package com.dropbox.core.p265v2.team;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.team.DateRangeErrorException */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/DateRangeErrorException.class */
public class DateRangeErrorException extends DbxApiException {

    /* renamed from: a */
    public final EnumC9287c f31801a;

    public DateRangeErrorException(String str, String str2, C8621n c8621n, EnumC9287c enumC9287c) {
        super(str2, c8621n, m25359a(str, c8621n, enumC9287c));
        Objects.requireNonNull(enumC9287c, "errorValue");
        this.f31801a = enumC9287c;
    }
}
