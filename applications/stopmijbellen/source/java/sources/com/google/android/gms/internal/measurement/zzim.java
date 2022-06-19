package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzim.class */
public final class zzim {
    public static final zzig zza;

    static {
        zzil zzilVar;
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
                zzilVar = new zzil();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                zzilVar = new zzij();
            } else {
                num2 = num;
                zzilVar = new zzik();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = zzik.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            zzilVar = new zzik();
        }
        zza = zzilVar;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    public static void zza(Throwable th, Throwable th2) {
        zza.zza(th, th2);
    }
}
