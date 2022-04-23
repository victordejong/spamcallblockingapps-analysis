package com.sinch.logging;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0006\u001a\u00020\u0007\"\b\b��\u0010\b*\u00020\u00012\u0006\u0010\t\u001a\u0002H\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0002\u0010\fJ!\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0010\"\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/sinch/logging/Log;", "", "()V", "delegates", "", "Lcom/sinch/logging/Appender;", "create", "Lcom/sinch/logging/Logger;", "T", "type", "tagOverride", "", "(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;", "init", "", "appenders", "", "([Lcom/sinch/logging/Appender;)V", "DelegatingLogger", "logging_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/logging/Log.class */
public final class Log {
    public static final Log INSTANCE = new Log();
    private static final Set<Appender> delegates = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/sinch/logging/Log$DelegatingLogger;", "Lcom/sinch/logging/Logger;", "tag", "", "(Ljava/lang/String;)V", "getTag", "()Ljava/lang/String;", "debug", "", "msg", "t", "", "error", "info", "trace", "warn", "logging_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/logging/Log$DelegatingLogger.class */
    public static final class DelegatingLogger implements Logger {
        private final String tag;

        public DelegatingLogger(String tag) {
            p.c(tag, "tag");
            this.tag = tag;
        }

        @Override // com.sinch.logging.Logger
        public final void debug(String msg, Throwable th) {
            p.c(msg, "msg");
            Log log = Log.INSTANCE;
            for (Appender appender : Log.delegates) {
                appender.debug(getTag(), msg, th);
            }
        }

        @Override // com.sinch.logging.Logger
        public final void error(String msg, Throwable th) {
            p.c(msg, "msg");
            Log log = Log.INSTANCE;
            for (Appender appender : Log.delegates) {
                appender.error(getTag(), msg, th);
            }
        }

        @Override // com.sinch.logging.Logger
        public final String getTag() {
            return this.tag;
        }

        @Override // com.sinch.logging.Logger
        public final void info(String msg, Throwable th) {
            p.c(msg, "msg");
            Log log = Log.INSTANCE;
            for (Appender appender : Log.delegates) {
                appender.info(getTag(), msg, th);
            }
        }

        @Override // com.sinch.logging.Logger
        public final void trace(String msg, Throwable th) {
            p.c(msg, "msg");
            Log log = Log.INSTANCE;
            for (Appender appender : Log.delegates) {
                appender.trace(getTag(), msg, th);
            }
        }

        @Override // com.sinch.logging.Logger
        public final void warn(String msg, Throwable th) {
            p.c(msg, "msg");
            Log log = Log.INSTANCE;
            for (Appender appender : Log.delegates) {
                appender.warn(getTag(), msg, th);
            }
        }
    }

    private Log() {
    }

    public static final <T> Logger create(T t) {
        return create$default(t, null, 2, null);
    }

    public static final <T> Logger create(T type, String str) {
        p.c(type, "type");
        String str2 = str;
        if (str == null) {
            str2 = type.getClass().getSimpleName();
            p.a((Object) str2, "type::class.java.simpleName");
        }
        return new DelegatingLogger(str2);
    }

    public static /* synthetic */ Logger create$default(Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = null;
        }
        return create(obj, str);
    }

    public static final void init(Appender... appenders) {
        p.c(appenders, "appenders");
        Set<Appender> set = delegates;
        set.clear();
        n.a((Collection) set, (Object[]) appenders);
    }
}
