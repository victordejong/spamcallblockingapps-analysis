package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zah.class */
final class zah implements zai<BigDecimal> {
    @Override // com.google.android.gms.common.server.response.zai
    public final /* bridge */ /* synthetic */ BigDecimal zaa(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        BigDecimal zau;
        zau = fastParser.zau(bufferedReader);
        return zau;
    }
}
