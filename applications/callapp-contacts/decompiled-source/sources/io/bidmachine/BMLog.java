package io.bidmachine;

import io.bidmachine.core.Logger;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/BMLog.class */
public class BMLog {
    public static void log(String str, String str2) {
        Logger.log(String.format("%s: %s", str, str2));
    }

    public static void log(Throwable th) {
        Logger.log(th);
    }
}
