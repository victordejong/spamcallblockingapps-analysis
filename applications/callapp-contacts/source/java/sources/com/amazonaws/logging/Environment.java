package com.amazonaws.logging;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/Environment.class */
public final class Environment {
    private Environment() {
    }

    /* renamed from: a */
    public static boolean m38598a() {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (stackTraceElement.getClassName().startsWith("org.junit.")) {
                return true;
            }
        }
        return false;
    }
}
