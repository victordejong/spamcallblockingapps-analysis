package p081h.p203i.p204a.p224e.p235d.p249s;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
/* renamed from: h.i.a.e.d.s.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/p.class */
public class C7084p {

    /* renamed from: a */
    public static String f17191a;

    /* renamed from: b */
    public static int f17192b;

    /* renamed from: a */
    public static BufferedReader m21118a(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @Nullable
    /* renamed from: a */
    public static String m21120a() {
        if (f17191a == null) {
            if (f17192b == 0) {
                f17192b = Process.myPid();
            }
            f17191a = m21119a(f17192b);
        }
        return f17191a;
    }

    @Nullable
    /* renamed from: a */
    public static String m21119a(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        String str = null;
        BufferedReader bufferedReader2 = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = m21118a(sb.toString());
            try {
                str = bufferedReader.readLine().trim();
                C7080l.m21138a(bufferedReader);
            } catch (IOException e) {
                C7080l.m21138a(bufferedReader);
                return str;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                C7080l.m21138a(bufferedReader2);
                throw th;
            }
        } catch (IOException e2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
        return str;
    }
}
