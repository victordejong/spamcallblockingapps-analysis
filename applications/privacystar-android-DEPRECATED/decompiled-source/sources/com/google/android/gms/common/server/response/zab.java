package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zab.class */
final class zab implements FastParser.zaa<Long> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ Long zah(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        long zae;
        zae = fastParser.zae(bufferedReader);
        return Long.valueOf(zae);
    }
}
