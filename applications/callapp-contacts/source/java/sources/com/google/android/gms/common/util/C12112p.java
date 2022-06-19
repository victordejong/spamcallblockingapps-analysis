package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.internal.C12045o;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* renamed from: com.google.android.gms.common.util.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/p.class */
public final class C12112p {

    /* renamed from: a */
    private static String f39635a;

    /* renamed from: b */
    private static int f39636b;

    private C12112p() {
    }

    /* renamed from: a */
    public static String m19009a() {
        BufferedReader bufferedReader;
        Throwable th;
        if (f39635a == null) {
            if (f39636b == 0) {
                f39636b = Process.myPid();
            }
            int i = f39636b;
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
                            C12045o.m19162a(readLine);
                            str = readLine.trim();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            C12108l.m19025a(bufferedReader);
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
                C12108l.m19025a(bufferedReader);
            }
            f39635a = str;
        }
        return f39635a;
    }
}
