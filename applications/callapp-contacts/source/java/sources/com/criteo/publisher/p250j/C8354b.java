package com.criteo.publisher.p250j;

import com.criteo.publisher.Bid;
import com.criteo.publisher.C8258c;
import com.criteo.publisher.C8517n;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.logging.C8393a;
import com.criteo.publisher.logging.C8396b;
import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.model.InterstitialAdUnit;
import java.lang.reflect.Method;
import kotlin.jvm.internal.C18508b;
import kotlin.jvm.internal.C18524p;
import kotlin.p531g.C18381k;
import kotlin.p532h.C18425p;
/* renamed from: com.criteo.publisher.j.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j/b.class */
public final class C8354b {
    static {
        new C8354b();
    }

    private C8354b() {
    }

    @C8393a.AbstractC8394a
    /* renamed from: a */
    public static final C8400e m25805a() {
        StringBuilder sb = new StringBuilder("Calling ");
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
        sb.append(" with a null application");
        return new C8400e(5, sb.toString(), null, "onMethodCalledWithNullApplication", 4, null);
    }

    /* renamed from: a */
    public static final C8400e m25804a(CriteoInterstitial interstitial) {
        C18524p.m3841c(interstitial, "interstitial");
        return new C8400e(0, "Interstitial(" + C8517n.m25476a(interstitial) + ") is loading", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25803a(CriteoInterstitial interstitial, Bid bid) {
        C18524p.m3841c(interstitial, "interstitial");
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(C8517n.m25476a(interstitial));
        sb.append(") is loading with bid ");
        sb.append(bid != null ? C8258c.m25959a(bid) : null);
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25802a(CriteoInterstitial interstitial, boolean z) {
        C18524p.m3841c(interstitial, "interstitial");
        return new C8400e(0, "Interstitial(" + C8517n.m25476a(interstitial) + ") is isAdLoaded=" + z, null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25801a(InterstitialAdUnit interstitialAdUnit) {
        return new C8400e(0, "Interstitial initialized for ".concat(String.valueOf(interstitialAdUnit)), null, null, 13, null);
    }

    /* renamed from: b */
    public static final C8400e m25800b(CriteoInterstitial criteoInterstitial) {
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(criteoInterstitial != null ? C8517n.m25476a(criteoInterstitial) : null);
        sb.append(") is loaded");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: c */
    public static final C8400e m25799c(CriteoInterstitial criteoInterstitial) {
        StringBuilder sb = new StringBuilder("Interstitial(");
        sb.append(criteoInterstitial != null ? C8517n.m25476a(criteoInterstitial) : null);
        sb.append(") failed to load");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: d */
    public static final C8400e m25798d(CriteoInterstitial interstitial) {
        C18524p.m3841c(interstitial, "interstitial");
        return new C8400e(0, "Interstitial(" + C8517n.m25476a(interstitial) + ") is showing", null, null, 13, null);
    }
}
