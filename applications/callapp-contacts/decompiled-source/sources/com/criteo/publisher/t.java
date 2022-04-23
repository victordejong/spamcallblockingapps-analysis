package com.criteo.publisher;

import com.criteo.publisher.logging.a;
import com.criteo.publisher.logging.b;
import com.criteo.publisher.logging.e;
import java.lang.reflect.Method;
import kotlin.g.k;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/t.class */
public final class t {
    static {
        new t();
    }

    private t() {
    }

    @a.AbstractC0347a
    public static final e a(Throwable throwable) {
        p.c(throwable, "throwable");
        StringBuilder sb = new StringBuilder("Internal error in ");
        Method enclosingMethod = new b().getClass().getEnclosingMethod();
        String str = null;
        if (enclosingMethod != null) {
            if (enclosingMethod.isAnnotationPresent(a.AbstractC0347a.class)) {
                a aVar = a.f17443a;
                StackTraceElement stackTraceElement = (StackTraceElement) k.c(k.a(kotlin.jvm.internal.b.a(new Exception().getStackTrace())));
                str = null;
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    p.a((Object) className, "stackTraceElement.className");
                    str = kotlin.h.p.a(className, (CharSequence) "com.criteo.publisher.") + '#' + stackTraceElement.getMethodName() + ':' + stackTraceElement.getLineNumber();
                }
            } else {
                a aVar2 = a.f17443a;
                str = a.a(enclosingMethod);
            }
        }
        sb.append(str);
        return new e(6, sb.toString(), throwable, "onUncaughtErrorAtPublicApi");
    }

    public static final e b(Throwable throwable) {
        p.c(throwable, "throwable");
        return new e(6, "Uncaught error in thread", throwable, "onUncaughtErrorInThread");
    }

    public static final e c(Throwable throwable) {
        p.c(throwable, "throwable");
        return new e(6, "Assertion failed", throwable, "onAssertFailed");
    }

    public static final e d(Throwable throwable) {
        p.c(throwable, "throwable");
        return new e(4, "Uncaught expected exception in thread", throwable, "onUncaughtExpectedExceptionInThread");
    }
}
