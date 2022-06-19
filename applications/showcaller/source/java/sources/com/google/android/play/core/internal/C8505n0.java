package com.google.android.play.core.internal;

import java.io.PrintStream;
/* renamed from: com.google.android.play.core.internal.n0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/n0.class */
public final class C8505n0 {

    /* renamed from: a */
    static final AbstractC8492h0 f38060a;

    static {
        C8503m0 c8503m0;
        Integer num = null;
        Integer num2 = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            if (num != null && num.intValue() >= 19) {
                Integer num3 = num;
                Integer num4 = num;
                num2 = num;
                c8503m0 = new C8503m0();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c8503m0 = new C8499k0();
            } else {
                num2 = num;
                c8503m0 = new C8501l0();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C8501l0.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c8503m0 = new C8501l0();
        }
        f38060a = c8503m0;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m3487a(Throwable th, Throwable th2) {
        f38060a.mo3506a(th, th2);
    }
}
