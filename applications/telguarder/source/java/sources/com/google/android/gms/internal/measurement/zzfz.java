package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfz.class */
public final class zzfz {
    static final zzft zza;

    static {
        zzfy zzfyVar;
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
                zzfyVar = new zzfy();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                zzfyVar = new zzfw();
            } else {
                num2 = num;
                zzfyVar = new zzfx();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = zzfx.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            zzfyVar = new zzfx();
        }
        zza = zzfyVar;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    public static void zza(Throwable th, Throwable th2) {
        zza.zza(th, th2);
    }
}
