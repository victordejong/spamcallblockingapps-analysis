package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zae.class */
final class zae implements FastParser.zaa<Boolean> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ Boolean zah(FastParser fastParser, BufferedReader bufferedReader) {
        boolean zaa;
        zaa = fastParser.zaa(bufferedReader, false);
        return Boolean.valueOf(zaa);
    }
}
