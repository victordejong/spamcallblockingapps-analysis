package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.measurement.m4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m4.class */
public final class C7461m4 {

    /* renamed from: a */
    static final AbstractC7363f4 f34591a;

    static {
        C7433k4 c7433k4;
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
                c7433k4 = new C7433k4();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c7433k4 = new C7405i4();
            } else {
                num2 = num;
                c7433k4 = new C7419j4();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C7419j4.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c7433k4 = new C7419j4();
        }
        f34591a = c7433k4;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m7163a(Throwable th, Throwable th2) {
        f34591a.mo7210a(th, th2);
    }
}
