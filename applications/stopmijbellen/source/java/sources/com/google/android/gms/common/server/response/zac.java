package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zac.class */
final class zac implements zai<Float> {
    @Override // com.google.android.gms.common.server.response.zai
    public final /* bridge */ /* synthetic */ Float zaa(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        float zas;
        zas = fastParser.zas(bufferedReader);
        return Float.valueOf(zas);
    }
}
