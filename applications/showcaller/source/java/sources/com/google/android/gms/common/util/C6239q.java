package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6155o;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* renamed from: com.google.android.gms.common.util.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/q.class */
public class C6239q {

    /* renamed from: a */
    private static String f19719a;

    /* renamed from: b */
    private static int f19720b;

    @RecentlyNullable
    /* renamed from: a */
    public static String m16770a() {
        BufferedReader bufferedReader;
        Throwable th;
        if (f19719a == null) {
            if (f19720b == 0) {
                f19720b = Process.myPid();
            }
            int i = f19720b;
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
                            C6155o.m17018j(readLine);
                            str = readLine.trim();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            C6233k.m16790a(bufferedReader);
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
                C6233k.m16790a(bufferedReader);
            }
            f19719a = str;
        }
        return f19719a;
    }
}
