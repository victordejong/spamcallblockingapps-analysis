package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C1581h;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.util.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/p.class */
public class C1619p {
    @Nullable

    /* renamed from: a */
    private static String f5897a;

    /* renamed from: b */
    private static int f5898b;

    @RecentlyNullable
    /* renamed from: a */
    public static String m8203a() {
        Throwable th;
        if (f5897a == null) {
            if (f5898b == 0) {
                f5898b = Process.myPid();
            }
            int i = f5898b;
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
                            C1581h.m8347h(readLine);
                            str = readLine.trim();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            C1615l.m8222a(bufferedReader);
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
                C1615l.m8222a(bufferedReader);
            }
            f5897a = str;
        }
        return f5897a;
    }
}
