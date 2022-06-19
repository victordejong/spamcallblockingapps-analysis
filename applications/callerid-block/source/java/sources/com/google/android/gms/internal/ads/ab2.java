package com.google.android.gms.internal.ads;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ab2.class */
public final class ab2 {

    /* renamed from: a */
    static final ua2 f5951a;

    static {
        za2 za2Var;
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
                za2Var = new za2();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                za2Var = new xa2();
            } else {
                num2 = num;
                za2Var = new ya2();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = ya2.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            za2Var = new ya2();
        }
        f5951a = za2Var;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m8151a(Throwable th, Throwable th2) {
        f5951a.m5401a(th, th2);
    }

    /* renamed from: b */
    public static void m8150b(Throwable th) {
        f5951a.m5400b(th);
    }

    /* renamed from: c */
    public static void m8149c(Throwable th, PrintWriter printWriter) {
        f5951a.m5399c(th, printWriter);
    }
}
