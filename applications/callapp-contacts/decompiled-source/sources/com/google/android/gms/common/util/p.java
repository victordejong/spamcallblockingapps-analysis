package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.internal.o;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static String f22949a;

    /* renamed from: b  reason: collision with root package name */
    private static int f22950b;

    private p() {
    }

    public static String a() {
        Throwable th;
        if (f22949a == null) {
            if (f22950b == 0) {
                f22950b = Process.myPid();
            }
            int i = f22950b;
            String str = null;
            str = null;
            BufferedReader bufferedReader = null;
            if (i > 0) {
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
                            o.a(readLine);
                            str = readLine.trim();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            l.a(bufferedReader);
                            throw th;
                        }
                    } finally {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    }
                } catch (IOException e2) {
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                l.a(bufferedReader);
            }
            f22949a = str;
        }
        return f22949a;
    }
}
