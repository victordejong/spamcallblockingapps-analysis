package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zab.class */
final class zab implements zai<Long> {
    @Override // com.google.android.gms.common.server.response.zai
    public final /* bridge */ /* synthetic */ Long zaa(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        long zap;
        zap = fastParser.zap(bufferedReader);
        return Long.valueOf(zap);
    }
}
