package com.sinch.logging;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH&J$\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH&J$\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH&J$\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH&J$\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\r"}, d2 = {"Lcom/sinch/logging/Appender;", "", "debug", "", "tag", "", "msg", "t", "", "error", "info", "trace", "warn", "logging_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/logging/Appender.class */
public interface Appender {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/logging/Appender$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void debug$default(Appender appender, String str, String str2, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    th = null;
                }
                appender.debug(str, str2, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }

        public static /* synthetic */ void error$default(Appender appender, String str, String str2, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    th = null;
                }
                appender.error(str, str2, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }

        public static /* synthetic */ void info$default(Appender appender, String str, String str2, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    th = null;
                }
                appender.info(str, str2, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }

        public static /* synthetic */ void trace$default(Appender appender, String str, String str2, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    th = null;
                }
                appender.trace(str, str2, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trace");
        }

        public static /* synthetic */ void warn$default(Appender appender, String str, String str2, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    th = null;
                }
                appender.warn(str, str2, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
    }

    void debug(String str, String str2, Throwable th);

    void error(String str, String str2, Throwable th);

    void info(String str, String str2, Throwable th);

    void trace(String str, String str2, Throwable th);

    void warn(String str, String str2, Throwable th);
}
