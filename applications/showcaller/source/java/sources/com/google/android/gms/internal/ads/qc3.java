package com.google.android.gms.internal.ads;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qc3.class */
public final class qc3 {

    /* renamed from: a */
    static final jc3 f28410a;

    static {
        pc3 pc3Var;
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
                pc3Var = new pc3();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                pc3Var = new nc3();
            } else {
                num2 = num;
                pc3Var = new oc3();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = oc3.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            pc3Var = new oc3();
        }
        f28410a = pc3Var;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m11958a(Throwable th, Throwable th2) {
        f28410a.mo12311a(th, th2);
    }

    /* renamed from: b */
    public static void m11957b(Throwable th) {
        f28410a.mo12310b(th);
    }

    /* renamed from: c */
    public static void m11956c(Throwable th, PrintWriter printWriter) {
        f28410a.mo12309c(th, printWriter);
    }
}
