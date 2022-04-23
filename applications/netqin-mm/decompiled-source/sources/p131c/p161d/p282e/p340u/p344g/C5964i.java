package p131c.p161d.p282e.p340u.p344g;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.firebase.perf.util.StorageUnit;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5998f;
/* renamed from: c.d.e.u.g.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/i.class */
public class C5964i {

    /* renamed from: f */
    public static final C5969a f19373f = C5969a.m22496a();

    /* renamed from: a */
    public final Runtime f19374a;

    /* renamed from: b */
    public final ActivityManager f19375b;

    /* renamed from: c */
    public final ActivityManager.MemoryInfo f19376c;

    /* renamed from: d */
    public final String f19377d;

    /* renamed from: e */
    public final Context f19378e;

    public C5964i(Context context) {
        this(Runtime.getRuntime(), context);
    }

    public C5964i(Runtime runtime, Context context) {
        this.f19374a = runtime;
        this.f19378e = context;
        this.f19375b = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f19376c = memoryInfo;
        this.f19375b.getMemoryInfo(memoryInfo);
        this.f19377d = m22510a();
    }

    /* renamed from: a */
    public int m22509a(String str) {
        String readLine;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            do {
                try {
                    readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return 0;
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            } while (!readLine.startsWith("MemTotal"));
            Matcher matcher = Pattern.compile("\\d+").matcher(readLine);
            int parseInt = matcher.find() ? Integer.parseInt(matcher.group()) : 0;
            bufferedReader.close();
            return parseInt;
        } catch (IOException e) {
            C5969a aVar = f19373f;
            aVar.m22491d("Unable to read '" + str + "' file: " + e.getMessage(), new Object[0]);
            return 0;
        } catch (NumberFormatException e2) {
            C5969a aVar2 = f19373f;
            aVar2.m22491d("Unable to parse '" + str + "' file: " + e2.getMessage(), new Object[0]);
            return 0;
        }
    }

    /* renamed from: a */
    public final String m22510a() {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = this.f19375b.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return this.f19378e.getPackageName();
    }

    /* renamed from: b */
    public int m22508b() {
        return Build.VERSION.SDK_INT >= 16 ? C5998f.m22360a(StorageUnit.BYTES.toKilobytes(this.f19376c.totalMem)) : m22509a("/proc/meminfo");
    }

    /* renamed from: c */
    public int m22507c() {
        return C5998f.m22360a(StorageUnit.BYTES.toKilobytes(this.f19374a.maxMemory()));
    }

    /* renamed from: d */
    public int m22506d() {
        return C5998f.m22360a(StorageUnit.MEGABYTES.toKilobytes(this.f19375b.getMemoryClass()));
    }

    /* renamed from: e */
    public String m22505e() {
        return this.f19377d;
    }
}
