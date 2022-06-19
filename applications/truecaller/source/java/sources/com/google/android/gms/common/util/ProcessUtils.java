package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {

    /* renamed from: a */
    public static String f6140a;

    /* renamed from: b */
    public static int f6141b;

    private ProcessUtils() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static String m38773a() {
        String str;
        BufferedReader bufferedReader;
        Throwable th;
        if (f6140a == null) {
            int i = f6141b;
            int i2 = i;
            if (i == 0) {
                i2 = Process.myPid();
                f6141b = i2;
            }
            try {
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
                        try {
                            bufferedReader = new BufferedReader(new FileReader(sb2));
                            try {
                                String readLine = bufferedReader.readLine();
                                Objects.requireNonNull(readLine, "null reference");
                                String trim = readLine.trim();
                                bufferedReader.close();
                                str = trim;
                            } catch (IOException e) {
                                str = null;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                    str = null;
                                }
                                f6140a = str;
                                return f6140a;
                            } catch (Throwable th2) {
                                th = th2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (IOException e3) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                    }
                }
            } catch (IOException e4) {
            }
            f6140a = str;
        }
        return f6140a;
    }
}
