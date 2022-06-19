package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.measurement.ew */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ew.class */
public final class C13483ew {

    /* renamed from: a */
    static final AbstractC13476ep f50700a;

    static {
        C13481eu c13481eu;
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
                c13481eu = new C13481eu();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c13481eu = new C13479es();
            } else {
                num2 = num;
                c13481eu = new C13480et();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C13480et.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c13481eu = new C13480et();
        }
        f50700a = c13481eu;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m12888a(Throwable th, Throwable th2) {
        f50700a.mo12890a(th, th2);
    }
}
