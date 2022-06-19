package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zah.class */
final class zah implements FastParser.zaa<BigDecimal> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ BigDecimal zah(FastParser fastParser, BufferedReader bufferedReader) {
        BigDecimal zai;
        zai = fastParser.zai(bufferedReader);
        return zai;
    }
}
