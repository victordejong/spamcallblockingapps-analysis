package com.nll.nativelibs.callrecording;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/nll/nativelibs/callrecording/PropManager.class */
public class PropManager {
    public static String get(String str) {
        ArrayList<String> runtimeExecResult = getRuntimeExecResult(String.format("/system/bin/getprop %s", str));
        return runtimeExecResult.size() > 0 ? runtimeExecResult.get(0) : null;
    }

    public static ArrayList<String> get() {
        return getRuntimeExecResult("/system/bin/getprop");
    }

    public static int getInt(String str) {
        return toInt(get(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<java.lang.String> getRuntimeExecResult(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nll.nativelibs.callrecording.PropManager.getRuntimeExecResult(java.lang.String):java.util.ArrayList");
    }

    private static int toInt(String str) {
        if (str == null || !TextUtils.isDigitsOnly(str)) {
            return 0;
        }
        return Integer.parseInt(str);
    }
}
