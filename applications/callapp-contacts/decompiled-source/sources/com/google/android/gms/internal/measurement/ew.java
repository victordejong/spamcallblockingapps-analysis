package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ew.class */
public final class ew {

    /* renamed from: a  reason: collision with root package name */
    static final ep f29001a;

    static {
        ep epVar;
        Integer num = null;
        Integer num2 = null;
        try {
            try {
                num2 = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            if (num2 != null && num2.intValue() >= 19) {
                epVar = new eu();
                num = num2;
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                epVar = new es();
                num = num2;
            } else {
                epVar = new et();
                num = num2;
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = et.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            epVar = new et();
        }
        f29001a = epVar;
        if (num != null) {
            num.intValue();
        }
    }

    public static void a(Throwable th, Throwable th2) {
        f29001a.a(th, th2);
    }
}
