package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zac.class */
final class zac implements FastParser.zaa<Float> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ Float zah(FastParser fastParser, BufferedReader bufferedReader) {
        float zag;
        zag = fastParser.zag(bufferedReader);
        return Float.valueOf(zag);
    }
}
