package com.google.firebase.crashlytics.internal.stacktrace;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy.class */
public interface StackTraceTrimmingStrategy {
    StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr);
}
