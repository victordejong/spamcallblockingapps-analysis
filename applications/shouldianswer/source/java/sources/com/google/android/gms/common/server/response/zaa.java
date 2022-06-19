package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zaa.class */
final class zaa implements FastParser.zaa<Integer> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ Integer zah(FastParser fastParser, BufferedReader bufferedReader) {
        int zad;
        zad = fastParser.zad(bufferedReader);
        return Integer.valueOf(zad);
    }
}
