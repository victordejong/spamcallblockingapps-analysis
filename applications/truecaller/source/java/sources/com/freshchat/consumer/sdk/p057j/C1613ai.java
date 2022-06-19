package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.os.Process;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
/* renamed from: com.freshchat.consumer.sdk.j.ai */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ai.class */
public class C1613ai {
    /* renamed from: aR */
    public static File m40288aR(Context context) {
        int myPid;
        String str;
        if (Process.myPid() > 0) {
            str = Integer.toString(myPid) + "):";
        } else {
            str = null;
        }
        C1625ar c1625ar = new C1625ar();
        c1625ar.m40234v(1000);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(m40279u(10000)).getInputStream()), 8192);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else if (!m40286cl() || readLine.contains(str)) {
                    c1625ar.add(readLine);
                }
            }
        } catch (IOException e) {
            m40282e("FRESHCHAT", "Mobihelp could not retrieve data from LogCat", e);
        }
        File m40280q = m40280q(context, "debuglog");
        try {
            m40280q.createNewFile();
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(m40280q, true));
            Iterator<E> it = c1625ar.iterator();
            while (it.hasNext()) {
                bufferedWriter.append((CharSequence) ((String) it.next()));
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
            return m40280q;
        } catch (IOException e2) {
            return null;
        }
    }

    /* renamed from: ck */
    public static boolean m40287ck() {
        return false;
    }

    /* renamed from: cl */
    private static boolean m40286cl() {
        return C1630aw.m40201eV() && Process.myPid() > 0;
    }

    /* renamed from: d */
    public static void m40285d(Context context, String str, String str2) {
        Toast.makeText(context, str2, 0).show();
    }

    /* renamed from: d */
    public static void m40284d(String str, String str2) {
    }

    /* renamed from: e */
    public static void m40283e(String str, String str2) {
    }

    /* renamed from: e */
    public static void m40282e(String str, String str2, Throwable th) {
    }

    /* renamed from: i */
    public static void m40281i(String str, String str2) {
    }

    /* renamed from: q */
    private static File m40280q(Context context, String str) {
        if (context != null) {
            try {
                return File.createTempFile(str, ".txt", context.getCacheDir());
            } catch (IOException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: u */
    private static String m40279u(int i) {
        return "logcat -d -v time -t " + i + " dalvikvm:I AndroidRuntime:E HOTLINE:S HOTLINE_WARNING:S HOTLINE_SERVICE:S *:D";
    }

    /* renamed from: w */
    public static void m40278w(String str, String str2) {
    }

    /* renamed from: w */
    public static void m40277w(String str, String str2, Throwable th) {
    }
}
