package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.RecentlyNullable;
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

    @RecentlyNullable
    @KeepForSdk
    public static String getMyProcessName() {
        BufferedReader bufferedReader;
        Throwable th;
        if (zza == null) {
            if (zzb == 0) {
                zzb = Process.myPid();
            }
            int i = zzb;
            String str = null;
            if (i <= 0) {
                str = null;
            } else {
                try {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append("/proc/");
                    sb.append(i);
                    sb.append("/cmdline");
                    String sb2 = sb.toString();
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        bufferedReader = new BufferedReader(new FileReader(sb2));
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
                    } finally {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
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
