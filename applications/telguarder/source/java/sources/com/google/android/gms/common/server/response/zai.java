package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zai.class */
public interface zai<O> {
    O zaa(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException;
}
