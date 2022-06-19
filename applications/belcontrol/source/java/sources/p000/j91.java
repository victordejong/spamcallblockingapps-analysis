package p000;

import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: j91 */
/* loaded from: classes3-dex2jar.jar:j91.class */
public class j91 {

    /* renamed from: a */
    public static final String f6821a = "j91";

    /* renamed from: b */
    public static int f6822b = 2;

    /* renamed from: c */
    public static int f6823c = 2;

    /* renamed from: d */
    public static HashMap<String, Long> f6824d = new HashMap<>();

    /* renamed from: e */
    public static ArrayList<String> f6825e = new ArrayList<>();

    /* renamed from: f */
    public static HashMap<String, Boolean> f6826f = new HashMap<>();

    /* renamed from: g */
    public static String f6827g = "";

    /* renamed from: h */
    public static int f6828h = 0;

    /* renamed from: i */
    public static ScheduledExecutorService f6829i;

    /* renamed from: j */
    public static ScheduledFuture<?> f6830j;

    /* renamed from: k */
    public static AbstractC1455d f6831k;

    /* renamed from: j91$a */
    /* loaded from: classes3-dex2jar.jar:j91$a.class */
    public static final class RunnableC1452a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            j91.m1492x();
        }
    }

    /* renamed from: j91$b */
    /* loaded from: classes3-dex2jar.jar:j91$b.class */
    public static final class C1453b {
        /* renamed from: a */
        public static String m1489a(Class<?> cls, String str) {
            if (cls == null) {
                return "UNKNOWN_" + str;
            }
            return cls.getName() + "_" + str;
        }

        /* renamed from: b */
        public static String m1488b(Object obj, String str) {
            return m1489a(obj != null ? obj.getClass() : null, str);
        }
    }

    /* renamed from: j91$c */
    /* loaded from: classes3-dex2jar.jar:j91$c.class */
    public static final class C1454c implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        public Thread.UncaughtExceptionHandler f6832a;

        /* renamed from: b */
        public static void m1486b() {
            C1454c c1454c = new C1454c();
            c1454c.f6832a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(c1454c);
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            String[] strArr;
            File m1501o;
            synchronized (j91.f6821a) {
                strArr = (String[]) j91.f6825e.toArray(new String[j91.f6825e.size()]);
                for (String str : strArr) {
                    j91.f6826f.put(str, Boolean.FALSE);
                }
            }
            j91.m1492x();
            String str2 = "";
            for (String str3 : strArr) {
                String str4 = "";
                String str5 = str2;
                if (j91.m1501o(str3, true).exists()) {
                    str5 = str2 + str3 + "<EOP>" + ka1.m1416h(m1501o) + "<EOB>";
                    str4 = " (continue)";
                }
                str2 = str5 + str3 + str4 + "<EOP>" + ka1.m1416h(j91.m1502n(str3)) + "<EOB>";
            }
            if (j91.f6831k != null) {
                j91.f6831k.mo1484b(th, str2);
            }
            try {
                Thread.sleep(2000L);
            } catch (Throwable th2) {
            }
            this.f6832a.uncaughtException(thread, th);
        }
    }

    /* renamed from: j91$d */
    /* loaded from: classes3-dex2jar.jar:j91$d.class */
    public interface AbstractC1455d {
        /* renamed from: a */
        void mo1485a(Throwable th, String str);

        /* renamed from: b */
        void mo1484b(Throwable th, String str);
    }

    /* renamed from: A */
    public static void m1523A(int i) {
        f6823c = i;
    }

    /* renamed from: B */
    public static void m1522B(String str) {
        String str2 = f6821a;
        synchronized (str2) {
            if (f6825e.contains(str)) {
                m1506j(5, str2, "Restarting point " + str, true);
            }
            m1502n(str).delete();
            f6825e.add(str);
        }
    }

    /* renamed from: C */
    public static void m1521C(String str) {
        f6824d.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    /* renamed from: D */
    public static void m1520D(String str, boolean z) {
        synchronized (f6821a) {
            f6826f.put(str, Boolean.valueOf(z));
        }
        m1493w();
    }

    /* renamed from: E */
    public static Long m1519E(String str) {
        return m1518F(str, null);
    }

    /* renamed from: F */
    public static Long m1518F(String str, String str2) {
        if (str == null) {
            return 0L;
        }
        Long remove = f6824d.remove(str);
        if (remove != null) {
            Long valueOf = Long.valueOf(System.currentTimeMillis() - remove.longValue());
            m1498r(valueOf, str, str2);
            return valueOf;
        }
        m1517G(str, "Trying to stop time tracking for " + str + " which is not yet set");
        return 0L;
    }

    /* renamed from: G */
    public static void m1517G(Object obj, String str) {
        m1507i(5, obj, str);
    }

    /* renamed from: H */
    public static void m1516H(Object obj, String str, Throwable th) {
        m1507i(5, obj, str + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: h */
    public static void m1508h() {
        C1454c.m1486b();
    }

    /* renamed from: i */
    public static void m1507i(int i, Object obj, String str) {
        m1506j(i, obj, str, false);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0143 -> B:55:0x011d). Please submit an issue!!! */
    /* renamed from: j */
    public static void m1506j(int i, Object obj, String str, boolean z) {
        int i2;
        String str2 = "Unknown";
        if (obj != null) {
            str2 = "Unknown";
            try {
                if (String.class.isInstance(obj)) {
                    str2 = (String) obj;
                } else {
                    Class<?> cls = obj.getClass();
                    str2 = "Unknown";
                    if (cls != null) {
                        String simpleName = cls.getSimpleName();
                        String str3 = simpleName;
                        if (TextUtils.isEmpty(simpleName)) {
                            str3 = null;
                        }
                        str2 = str3;
                        if (str3 == null) {
                            str2 = cls.getName();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
        if (i >= f6822b) {
            Log.println(i, str2, str);
        }
        if (z || i < f6823c || f6825e.size() <= 0) {
            return;
        }
        synchronized (f6821a) {
            String str4 = "?";
            if (i == 2) {
                str4 = "V";
            } else if (i == 3) {
                str4 = "D";
            } else if (i == 4) {
                str4 = "I";
            } else if (i == 5) {
                str4 = "W";
            } else if (i == 6) {
                str4 = "E";
            }
            try {
                f6827g += str4 + "/" + str2 + ": " + str + "\n";
            } catch (OutOfMemoryError e2) {
            }
            i2 = f6828h + 1;
            f6828h = i2;
        }
        if (i2 > 100) {
            m1492x();
        } else {
            m1493w();
        }
    }

    /* renamed from: k */
    public static void m1505k(Object obj, String str) {
        m1507i(6, obj, str);
    }

    /* renamed from: l */
    public static void m1504l(Object obj, String str, Throwable th) {
        m1507i(6, obj, str + '\n' + Log.getStackTraceString(th));
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x013c -> B:32:0x0109). Please submit an issue!!! */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1503m() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.j91.m1503m():java.lang.String");
    }

    /* renamed from: n */
    public static File m1502n(String str) {
        return m1501o(str, false);
    }

    /* renamed from: o */
    public static File m1501o(String str, boolean z) {
        File file = new File(fa1.m1840j().getFilesDir(), "logs");
        file.mkdirs();
        StringBuilder sb = new StringBuilder();
        sb.append(str.replaceAll("\\W ", "_"));
        sb.append(".log");
        sb.append(z ? ".2" : "");
        return new File(file, sb.toString());
    }

    /* renamed from: p */
    public static Long m1500p(String str) {
        if (str == null) {
            return 0L;
        }
        Long l = f6824d.get(str);
        if (l != null) {
            return Long.valueOf(System.currentTimeMillis() - l.longValue());
        }
        m1517G(str, "Trying to get elapsed time for " + str + " which is not yet set");
        return 0L;
    }

    /* renamed from: q */
    public static void m1499q(Object obj, String str) {
        m1507i(4, obj, str);
    }

    /* renamed from: r */
    public static void m1498r(Long l, String str, String str2) {
        int longValue = ((int) ((l.longValue() / 1000) % 3600)) / 60;
        int longValue2 = (int) (l.longValue() / 1000);
        int longValue3 = (int) (l.longValue() % 1000);
        String str3 = String.format("%02d", Integer.valueOf(longValue)) + ":" + String.format("%02d", Integer.valueOf(longValue2 % 60)) + ":" + String.format("%03d", Integer.valueOf(longValue3));
        String str4 = str3;
        if (str2 != null) {
            str4 = str3 + " " + str2;
        }
        if (str == null) {
            str = f6821a;
        }
        m1507i(2, str, str4);
    }

    /* renamed from: s */
    public static void m1497s(String str, String str2) {
        m1498r(m1500p(str), str, str2);
    }

    /* renamed from: t */
    public static void m1496t(String str, String str2) {
        try {
            File m1502n = m1502n(str);
            if (m1502n.length() > 3072) {
                File m1501o = m1501o(str, true);
                m1501o.delete();
                m1502n.renameTo(m1501o);
            }
            FileWriter fileWriter = new FileWriter(m1502n, true);
            fileWriter.write(str2);
            fileWriter.flush();
            fileWriter.close();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: u */
    public static void m1495u(Throwable th) {
        m1494v(th, null);
    }

    /* renamed from: v */
    public static void m1494v(Throwable th, String str) {
        m1504l(f6821a, str, th);
        AbstractC1455d abstractC1455d = f6831k;
        if (abstractC1455d == null) {
            return;
        }
        try {
            abstractC1455d.mo1485a(th, str);
        } catch (Throwable th2) {
            m1516H(f6821a, "Unable to pass exception to external reporter", th2);
        }
    }

    /* renamed from: w */
    public static void m1493w() {
        if (f6829i == null) {
            f6829i = Executors.newSingleThreadScheduledExecutor();
        }
        ScheduledFuture<?> scheduledFuture = f6830j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        f6830j = f6829i.schedule(new RunnableC1452a(), 5000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: x */
    public static void m1492x() {
        synchronized (f6821a) {
            Iterator<String> it = f6825e.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Boolean bool = f6826f.get(next);
                if (bool != null && bool.booleanValue()) {
                    m1502n(next).delete();
                    m1501o(next, true).delete();
                }
                m1496t(next, f6827g);
            }
            for (String str : f6826f.keySet()) {
                f6825e.remove(str);
            }
            f6826f.clear();
            f6827g = "";
            f6828h = 0;
        }
    }

    /* renamed from: y */
    public static void m1491y(int i) {
        f6822b = i;
    }

    /* renamed from: z */
    public static void m1490z(AbstractC1455d abstractC1455d) {
        f6831k = abstractC1455d;
    }
}
