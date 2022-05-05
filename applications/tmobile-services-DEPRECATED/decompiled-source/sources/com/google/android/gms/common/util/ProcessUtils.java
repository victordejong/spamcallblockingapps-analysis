package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {

    /* renamed from: a */
    private static String f7647a;

    /* renamed from: b */
    private static int f7648b;

    private ProcessUtils() {
    }

    @Nullable
    @KeepForSdk
    /* renamed from: a */
    public static String m14312a() {
        if (f7647a == null) {
            if (f7648b == 0) {
                f7648b = Process.myPid();
            }
            f7647a = m14311b(f7648b);
        }
        return f7647a;
    }

    @Nullable
    /* renamed from: b */
    private static String m14311b(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        String str = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = m14310c(sb.toString());
            try {
                str = bufferedReader.readLine().trim();
                IOUtils.m14325a(bufferedReader);
            } catch (IOException e) {
                IOUtils.m14325a(bufferedReader);
                return str;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.m14325a(bufferedReader);
                throw th;
            }
        } catch (IOException e2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        return str;
    }

    /* renamed from: c */
    private static BufferedReader m14310c(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
