package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {
    @Nullable
    private static String zza;
    private static int zzb;

    private ProcessUtils() {
    }

    @KeepForSdk
    public static String getMyProcessName() {
        BufferedReader bufferedReader;
        Throwable th;
        if (zza == null) {
            int i = zzb;
            int i2 = i;
            if (i == 0) {
                i2 = Process.myPid();
                zzb = i2;
            }
            String str = null;
            if (i2 <= 0) {
                str = null;
            } else {
                try {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append("/proc/");
                    sb.append(i2);
                    sb.append("/cmdline");
                    String sb2 = sb.toString();
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    bufferedReader = new BufferedReader(new FileReader(sb2));
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    try {
                        String readLine = bufferedReader.readLine();
                        Preconditions.checkNotNull(readLine);
                        str = readLine.trim();
                    } catch (IOException e) {
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(bufferedReader);
                        throw th;
                    }
                } catch (IOException e2) {
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
                IOUtils.closeQuietly(bufferedReader);
            }
            zza = str;
        }
        return zza;
    }
}
