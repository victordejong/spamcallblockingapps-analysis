package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zad.class */
final class zad implements FastParser.zaa<Double> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ Double zah(FastParser fastParser, BufferedReader bufferedReader) {
        double zah;
        zah = fastParser.zah(bufferedReader);
        return Double.valueOf(zah);
    }
}
