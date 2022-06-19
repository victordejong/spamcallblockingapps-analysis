package com.google.android.gms.internal.ads;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzged.class */
public final class zzged {
    public static final zzgdx zza;

    static {
        zzgec zzgecVar;
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
                zzgecVar = new zzgec();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                zzgecVar = new zzgea();
            } else {
                num2 = num;
                zzgecVar = new zzgeb();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = zzgeb.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            zzgecVar = new zzgeb();
        }
        zza = zzgecVar;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    public static void zza(Throwable th, Throwable th2) {
        zza.zza(th, th2);
    }

    public static void zzb(Throwable th) {
        zza.zzb(th);
    }

    public static void zzc(Throwable th, PrintWriter printWriter) {
        zza.zzc(th, printWriter);
    }
}
