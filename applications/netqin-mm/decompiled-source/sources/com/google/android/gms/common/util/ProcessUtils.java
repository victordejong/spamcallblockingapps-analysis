package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {

    /* renamed from: a */
    public static String f23570a;

    /* renamed from: b */
    public static int f23571b;

    /* renamed from: a */
    public static BufferedReader m17051a(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static String m17053a() {
        if (f23570a == null) {
            if (f23571b == 0) {
                f23571b = Process.myPid();
            }
            f23570a = m17052a(f23571b);
        }
        return f23570a;
    }

    /* renamed from: a */
    public static String m17052a(int i) {
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
            bufferedReader = m17051a(sb.toString());
            try {
                str = bufferedReader.readLine().trim();
                IOUtils.m17075a(bufferedReader);
            } catch (IOException e) {
                IOUtils.m17075a(bufferedReader);
                return str;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.m17075a(bufferedReader);
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
}
