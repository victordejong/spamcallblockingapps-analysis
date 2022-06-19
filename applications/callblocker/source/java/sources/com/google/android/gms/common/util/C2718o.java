package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.util.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/o.class */
public class C2718o {

    /* renamed from: a */
    private static String f7527a = null;

    /* renamed from: b */
    private static int f7528b = 0;

    /* renamed from: a */
    private static BufferedReader m13828a(String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @Nullable
    /* renamed from: a */
    public static String m13830a() {
        if (f7527a == null) {
            if (f7528b == 0) {
                f7528b = Process.myPid();
            }
            f7527a = m13829a(f7528b);
        }
        return f7527a;
    }

    @Nullable
    /* renamed from: a */
    private static String m13829a(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2;
        String str = null;
        if (i > 0) {
            try {
                bufferedReader2 = m13828a(new StringBuilder(25).append("/proc/").append(i).append("/cmdline").toString());
            } catch (IOException e) {
                bufferedReader2 = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
            try {
                str = bufferedReader2.readLine().trim();
                C2714k.m13848a(bufferedReader2);
            } catch (IOException e2) {
                C2714k.m13848a(bufferedReader2);
                return str;
            } catch (Throwable th3) {
                bufferedReader = bufferedReader2;
                th = th3;
                C2714k.m13848a(bufferedReader);
                throw th;
            }
        }
        return str;
    }
}
