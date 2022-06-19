package com.criteo.publisher;

import com.criteo.publisher.logging.C8393a;
import com.criteo.publisher.logging.C8396b;
import com.criteo.publisher.logging.C8400e;
import java.lang.reflect.Method;
import kotlin.jvm.internal.C18508b;
import kotlin.jvm.internal.C18524p;
import kotlin.p531g.C18381k;
import kotlin.p532h.C18425p;
/* renamed from: com.criteo.publisher.t */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/t.class */
public final class C8527t {
    static {
        new C8527t();
    }

    private C8527t() {
    }

    @C8393a.AbstractC8394a
    /* renamed from: a */
    public static final C8400e m25376a(Throwable throwable) {
        C18524p.m3841c(throwable, "throwable");
        StringBuilder sb = new StringBuilder("Internal error in ");
        Method enclosingMethod = new C8396b().getClass().getEnclosingMethod();
        String str = null;
        if (enclosingMethod != null) {
            if (enclosingMethod.isAnnotationPresent(C8393a.AbstractC8394a.class)) {
                C8393a c8393a = C8393a.f30118a;
                StackTraceElement stackTraceElement = (StackTraceElement) C18381k.m4018c(C18381k.m4030a(C18508b.m3860a(new Exception().getStackTrace())));
                str = null;
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    C18524p.m3849a((Object) className, "stackTraceElement.className");
                    str = C18425p.m3931a(className, (CharSequence) "com.criteo.publisher.") + '#' + stackTraceElement.getMethodName() + ':' + stackTraceElement.getLineNumber();
                }
            } else {
                C8393a c8393a2 = C8393a.f30118a;
                str = C8393a.m25746a(enclosingMethod);
            }
        }
        sb.append(str);
        return new C8400e(6, sb.toString(), throwable, "onUncaughtErrorAtPublicApi");
    }

    /* renamed from: b */
    public static final C8400e m25375b(Throwable throwable) {
        C18524p.m3841c(throwable, "throwable");
        return new C8400e(6, "Uncaught error in thread", throwable, "onUncaughtErrorInThread");
    }

    /* renamed from: c */
    public static final C8400e m25374c(Throwable throwable) {
        C18524p.m3841c(throwable, "throwable");
        return new C8400e(6, "Assertion failed", throwable, "onAssertFailed");
    }

    /* renamed from: d */
    public static final C8400e m25373d(Throwable throwable) {
        C18524p.m3841c(throwable, "throwable");
        return new C8400e(4, "Uncaught expected exception in thread", throwable, "onUncaughtExpectedExceptionInThread");
    }
}
