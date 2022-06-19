package io.agora.rtc.internal;

import java.lang.reflect.Method;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/ATrace.class */
public class ATrace {
    public static final boolean ENABLE_TRACE = false;
    private static final String TAG = "ATrace";
    private static final long TRACE_TAG_APP = 4096;
    public static final boolean VERBOSE_LOG = false;
    private static Method traceCounterMethod;
    private static boolean traceCounterMethodFailed = false;

    public static void beginSection(String str) {
    }

    public static void endSection() {
    }

    public static void traceCounter(String str, int i) {
    }
}
