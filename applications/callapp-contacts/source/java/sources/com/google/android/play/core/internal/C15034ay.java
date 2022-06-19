package com.google.android.play.core.internal;

import java.io.PrintStream;
/* renamed from: com.google.android.play.core.internal.ay */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ay.class */
public final class C15034ay {

    /* renamed from: a */
    static final AbstractC15028as f54759a;

    static {
        C15033ax c15033ax;
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
                c15033ax = new C15033ax();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c15033ax = new C15031av();
            } else {
                num2 = num;
                c15033ax = new C15032aw();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C15032aw.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c15033ax = new C15032aw();
        }
        f54759a = c15033ax;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m9577a(Throwable th, Throwable th2) {
        f54759a.mo9578a(th, th2);
    }
}
