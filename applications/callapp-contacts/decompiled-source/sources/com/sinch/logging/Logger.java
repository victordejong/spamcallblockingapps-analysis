package com.sinch.logging;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&J\u001c\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&J\u001c\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&J\u001c\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&J\u001c\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000f"}, d2 = {"Lcom/sinch/logging/Logger;", "", "tag", "", "getTag", "()Ljava/lang/String;", "debug", "", "msg", "t", "", "error", "info", "trace", "warn", "logging_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/logging/Logger.class */
public interface Logger {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/logging/Logger$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void debug$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    th = null;
                }
                logger.debug(str, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }

        public static /* synthetic */ void error$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    th = null;
                }
                logger.error(str, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }

        public static /* synthetic */ void info$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    th = null;
                }
                logger.info(str, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }

        public static /* synthetic */ void trace$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    th = null;
                }
                logger.trace(str, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trace");
        }

        public static /* synthetic */ void warn$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    th = null;
                }
                logger.warn(str, th);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
    }

    void debug(String str, Throwable th);

    void error(String str, Throwable th);

    String getTag();

    void info(String str, Throwable th);

    void trace(String str, Throwable th);

    void warn(String str, Throwable th);
}
