package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zag.class */
final class zag implements FastParser.zaa<BigInteger> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ BigInteger zah(FastParser fastParser, BufferedReader bufferedReader) {
        BigInteger zaf;
        zaf = fastParser.zaf(bufferedReader);
        return zaf;
    }
}
