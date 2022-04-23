package com.criteo.publisher.j;

import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.c;
import com.criteo.publisher.logging.a;
import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.n;
import java.lang.reflect.Method;
import kotlin.g.k;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j/b.class */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    @a.AbstractC0347a
    public static final e a() {
        StringBuilder sb = new StringBuilder("Calling ");
        Method enclosingMethod = new com.criteo.publisher.logging.b().getClass().getEnclosingMethod();
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
        sb.append(" with a null application");
        return new e(5, sb.toString(), null, "onMethodCalledWithNullApplication", 4, null);
    }

    public static final e a(CriteoInterstitial interstitial) {
        p.c(interstitial, "interstitial");
        return new e(0, "Interstitial(" + n.a(interstitial) + ") is loading", null, null, 13, null);
    }

    public static final e a(CriteoInterstitial interstitial, Bid bid) {
        p.c(interstitial, "interstitial");
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(n.a(interstitial));
        sb.append(") is loading with bid ");
        sb.append(bid != null ? c.a(bid) : null);
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e a(CriteoInterstitial interstitial, boolean z) {
        p.c(interstitial, "interstitial");
        return new e(0, "Interstitial(" + n.a(interstitial) + ") is isAdLoaded=" + z, null, null, 13, null);
    }

    public static final e a(InterstitialAdUnit interstitialAdUnit) {
        return new e(0, "Interstitial initialized for ".concat(String.valueOf(interstitialAdUnit)), null, null, 13, null);
    }

    public static final e b(CriteoInterstitial criteoInterstitial) {
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(criteoInterstitial != null ? n.a(criteoInterstitial) : null);
        sb.append(") is loaded");
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e c(CriteoInterstitial criteoInterstitial) {
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(criteoInterstitial != null ? n.a(criteoInterstitial) : null);
        sb.append(") failed to load");
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e d(CriteoInterstitial interstitial) {
        p.c(interstitial, "interstitial");
        return new e(0, "Interstitial(" + n.a(interstitial) + ") is showing", null, null, 13, null);
    }
}
