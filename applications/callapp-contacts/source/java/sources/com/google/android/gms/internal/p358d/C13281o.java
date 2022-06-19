package com.google.android.gms.internal.p358d;

import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.d.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/o.class */
public final class C13281o {

    /* renamed from: a */
    static final AbstractC13275i f50535a;

    static {
        C13280n c13280n;
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
                c13280n = new C13280n();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c13280n = new C13278l();
            } else {
                num2 = num;
                c13280n = new C13279m();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C13279m.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c13280n = new C13279m();
        }
        f50535a = c13280n;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m13503a(Throwable th, Throwable th2) {
        f50535a.mo13504a(th, th2);
    }
}
