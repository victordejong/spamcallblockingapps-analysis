package com.google.android.play.core.internal;

import java.io.PrintStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ay.class */
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    static final as f31357a;

    static {
        as asVar;
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
                asVar = new ax();
                num = num2;
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                asVar = new av();
                num = num2;
            } else {
                asVar = new aw();
                num = num2;
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = aw.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            asVar = new aw();
        }
        f31357a = asVar;
        if (num != null) {
            num.intValue();
        }
    }

    public static void a(Throwable th, Throwable th2) {
        f31357a.a(th, th2);
    }
}
