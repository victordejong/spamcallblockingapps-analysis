package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.measurement.h4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h4.class */
public final class C2123h4 {

    /* renamed from: a */
    static final AbstractC2085a4 f9754a;

    static {
        f4 f4Var;
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
                f4Var = new f4();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                f4Var = new d4();
            } else {
                num2 = num;
                f4Var = new e4();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = e4.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            f4Var = new e4();
        }
        f9754a = f4Var;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m4326a(Throwable th, Throwable th2) {
        f9754a.m4462a(th, th2);
    }
}
