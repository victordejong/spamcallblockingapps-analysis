package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zad.class */
final class zad implements zai<Double> {
    @Override // com.google.android.gms.common.server.response.zai
    public final /* bridge */ /* synthetic */ Double zaa(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        double zat;
        zat = fastParser.zat(bufferedReader);
        return Double.valueOf(zat);
    }
}
