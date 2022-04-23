package com.sinch.logging;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\u000e"}, d2 = {"Lcom/sinch/logging/LogcatAppender;", "Lcom/sinch/logging/Appender;", "()V", "debug", "", "tag", "", "msg", "t", "", "error", "info", "trace", "warn", "logging_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/logging/LogcatAppender.class */
public final class LogcatAppender implements Appender {
    @Override // com.sinch.logging.Appender
    public final void debug(String tag, String msg, Throwable th) {
        p.c(tag, "tag");
        p.c(msg, "msg");
    }

    @Override // com.sinch.logging.Appender
    public final void error(String tag, String msg, Throwable th) {
        p.c(tag, "tag");
        p.c(msg, "msg");
        Log.e(tag, msg, th);
    }

    @Override // com.sinch.logging.Appender
    public final void info(String tag, String msg, Throwable th) {
        p.c(tag, "tag");
        p.c(msg, "msg");
    }

    @Override // com.sinch.logging.Appender
    public final void trace(String tag, String msg, Throwable th) {
        p.c(tag, "tag");
        p.c(msg, "msg");
    }

    @Override // com.sinch.logging.Appender
    public final void warn(String tag, String msg, Throwable th) {
        p.c(tag, "tag");
        p.c(msg, "msg");
        Log.w(tag, msg, th);
    }
}
