package p078c.p122d.p123a.p128i0;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import com.liulishuo.filedownloader.download.C9351c;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadSecurityException;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.yanzhenjie.nohttp.Headers;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p127h0.AbstractC2024a;
/* renamed from: c.d.a.i0.f */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/f.class */
public class C2040f {

    /* renamed from: a */
    private static int f7161a = 65536;

    /* renamed from: b */
    private static long f7162b = 2000;

    /* renamed from: c */
    private static String f7163c;

    /* renamed from: d */
    private static Boolean f7164d;

    /* renamed from: e */
    private static final Pattern f7165e = Pattern.compile("attachment;\\s*filename\\*\\s*=\\s*\"*([^\"]*)'\\S*'([^\"]*)\"*");

    /* renamed from: f */
    private static final Pattern f7166f = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"*([^\"\\n]*)\"*");

    /* renamed from: A */
    public static String m28241A(String str) {
        int length = str.length();
        int i = 2;
        int i2 = (File.separatorChar == '\\' && length > 2 && str.charAt(1) == ':') ? 2 : 0;
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf != -1 || i2 <= 0) {
            i = lastIndexOf;
        }
        if (i != -1) {
            char charAt = str.charAt(length - 1);
            char c = File.separatorChar;
            if (charAt == c) {
                return null;
            }
            return (str.indexOf(c) == i && str.charAt(i2) == File.separatorChar) ? str.substring(0, i + 1) : str.substring(0, i);
        }
        return null;
    }

    /* renamed from: B */
    public static String m28240B(String str, boolean z, String str2) {
        if (str == null) {
            return null;
        }
        String str3 = str;
        if (z) {
            if (str2 == null) {
                return null;
            }
            str3 = m28204q(str, str2);
        }
        return str3;
    }

    /* renamed from: C */
    public static String m28239C(String str) {
        return m28206o("%s.temp", str);
    }

    /* renamed from: D */
    public static String m28238D(String str) {
        return "FileDownloader-" + str;
    }

    /* renamed from: E */
    public static boolean m28237E(int i, AbstractC1995b abstractC1995b) {
        if (i == 206 || i == 1) {
            return true;
        }
        return "bytes".equals(abstractC1995b.mo28346d("Accept-Ranges"));
    }

    /* renamed from: F */
    private static boolean m28236F(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || (powerManager = (PowerManager) context.getSystemService("power")) == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT > 19) {
            if (!powerManager.isInteractive()) {
                return false;
            }
        } else if (!powerManager.isScreenOn()) {
            return false;
        }
        String packageName = context.getApplicationContext().getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: G */
    public static boolean m28235G(int i, FileDownloadModel fileDownloadModel) {
        return m28234H(i, fileDownloadModel, null);
    }

    /* renamed from: H */
    public static boolean m28234H(int i, FileDownloadModel fileDownloadModel, Boolean bool) {
        if (fileDownloadModel == null) {
            if (!C2036d.f7151a) {
                return false;
            }
            C2036d.m28253a(C2040f.class, "can't continue %d model == null", Integer.valueOf(i));
            return false;
        } else if (fileDownloadModel.m854j() != null) {
            return m28233I(i, fileDownloadModel, fileDownloadModel.m854j(), bool);
        } else {
            if (!C2036d.f7151a) {
                return false;
            }
            C2036d.m28253a(C2040f.class, "can't continue %d temp path == null", Integer.valueOf(i));
            return false;
        }
    }

    /* renamed from: I */
    public static boolean m28233I(int i, FileDownloadModel fileDownloadModel, String str, Boolean bool) {
        boolean z;
        if (str == null) {
            z = false;
            if (C2036d.f7151a) {
                C2036d.m28253a(C2040f.class, "can't continue %d path = null", Integer.valueOf(i));
                z = false;
            }
        } else {
            File file = new File(str);
            boolean exists = file.exists();
            boolean isDirectory = file.isDirectory();
            if (!exists || isDirectory) {
                z = false;
                if (C2036d.f7151a) {
                    C2036d.m28253a(C2040f.class, "can't continue %d file not suit, exists[%B], directory[%B]", Integer.valueOf(i), Boolean.valueOf(exists), Boolean.valueOf(isDirectory));
                    z = false;
                }
            } else {
                long length = file.length();
                long m857g = fileDownloadModel.m857g();
                if (fileDownloadModel.m863a() > 1 || m857g != 0) {
                    long m853k = fileDownloadModel.m853k();
                    if (length < m857g || (m853k != -1 && (length > m853k || m857g >= m853k))) {
                        z = false;
                        if (C2036d.f7151a) {
                            C2036d.m28253a(C2040f.class, "can't continue %d dirty data fileLength[%d] sofar[%d] total[%d]", Integer.valueOf(i), Long.valueOf(length), Long.valueOf(m857g), Long.valueOf(m853k));
                            z = false;
                        }
                    } else if (bool == null || bool.booleanValue() || m853k != length) {
                        z = true;
                    } else {
                        z = false;
                        if (C2036d.f7151a) {
                            C2036d.m28253a(C2040f.class, "can't continue %d, because of the output stream doesn't support seek, but the task has already pre-allocated, so we only can download it from the very beginning.", Integer.valueOf(i));
                            z = false;
                        }
                    }
                } else {
                    z = false;
                    if (C2036d.f7151a) {
                        C2036d.m28253a(C2040f.class, "can't continue %d the downloaded-record is zero.", Integer.valueOf(i));
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: J */
    public static boolean m28232J(Context context) {
        boolean z;
        Boolean bool = f7164d;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (!C2037e.m28244a().f7155d) {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == myPid) {
                            z = next.processName.endsWith(":filedownloader");
                            break;
                        }
                    }
                } else {
                    C2036d.m28245i(C2040f.class, "The running app process info list from ActivityManager is null or empty, maybe current App is not running.", new Object[0]);
                    return false;
                }
            } else {
                C2036d.m28245i(C2040f.class, "fail to get the activity manager!", new Object[0]);
                return false;
            }
        } else {
            z = true;
        }
        Boolean valueOf = Boolean.valueOf(z);
        f7164d = valueOf;
        return valueOf.booleanValue();
    }

    /* renamed from: K */
    public static boolean m28231K(String str) {
        return true;
    }

    /* renamed from: L */
    public static boolean m28230L(long j, long j2) {
        return j > ((long) m28196y()) && j2 > m28195z();
    }

    /* renamed from: M */
    public static boolean m28229M() {
        ConnectivityManager connectivityManager = (ConnectivityManager) C2031c.m28262a().getSystemService("connectivity");
        boolean z = false;
        if (connectivityManager == null) {
            C2036d.m28245i(C2040f.class, "failed to get connectivity manager!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: N */
    public static void m28228N(Context context) {
        File m28200u = m28200u(context);
        try {
            m28200u.getParentFile().mkdirs();
            m28200u.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: O */
    public static String m28227O(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Huh, MD5 should be supported?", e2);
        }
    }

    /* renamed from: P */
    public static boolean m28226P(Context context) {
        return Build.VERSION.SDK_INT >= 26 && !m28236F(context);
    }

    /* renamed from: Q */
    public static String m28225Q(String str) {
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = f7165e.matcher(str);
            if (matcher.find()) {
                return URLDecoder.decode(matcher.group(2), matcher.group(1));
            }
            Matcher matcher2 = f7166f.matcher(str);
            if (!matcher2.find()) {
                return null;
            }
            return matcher2.group(1);
        } catch (UnsupportedEncodingException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: R */
    public static long m28224R(String str) {
        if (str == null || str.length() == 0) {
            return -1L;
        }
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(str);
            if (!matcher.find()) {
                return -1L;
            }
            return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
        } catch (Exception e) {
            C2036d.m28251c(C2040f.class, e, "parse content length from content range error", new Object[0]);
            return -1L;
        }
    }

    /* renamed from: S */
    public static long m28223S(String str) {
        if (str == null) {
            return -1L;
        }
        String[] split = str.split("/");
        if (split.length < 2) {
            return -1L;
        }
        try {
            return Long.parseLong(split[1]);
        } catch (NumberFormatException e) {
            C2036d.m28245i(C2040f.class, "parse instance length failed with %s", str);
            return -1L;
        }
    }

    /* renamed from: T */
    public static void m28222T(int i) {
        if (m28232J(C2031c.m28262a())) {
            f7161a = i;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-step'.");
    }

    /* renamed from: U */
    public static void m28221U(long j) {
        if (m28232J(C2031c.m28262a())) {
            f7162b = j;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-time'.");
    }

    /* renamed from: a */
    public static boolean m28220a(String str) {
        return C2031c.m28262a().checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: b */
    public static long m28219b(String str) {
        char c;
        if (str == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str);
        } catch (NumberFormatException e) {
            c = 65535;
        }
        return c;
    }

    /* renamed from: c */
    public static AbstractC2024a m28218c(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!m28231K(str)) {
                throw new RuntimeException(m28206o("found invalid internal destination filename %s", str));
            }
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                throw new RuntimeException(m28206o("found invalid internal destination path[%s], & path is directory[%B]", str, Boolean.valueOf(file.isDirectory())));
            }
            if (!file.exists() && !file.createNewFile()) {
                throw new IOException(m28206o("create new file error  %s", file.getAbsolutePath()));
            }
            return C9351c.m979j().m987b(file);
        }
        throw new RuntimeException("found invalid internal destination path, empty");
    }

    /* renamed from: d */
    public static String m28217d() {
        return m28206o("FileDownloader/%s", "1.7.7");
    }

    /* renamed from: e */
    public static void m28216e(String str) {
        if (str != null) {
            File file = new File(str);
            if (!file.exists()) {
                return;
            }
            file.delete();
        }
    }

    /* renamed from: f */
    public static void m28215f(String str, String str2) {
        m28214g(str2);
        m28216e(str);
    }

    /* renamed from: g */
    public static void m28214g(String str) {
        if (str != null) {
            File file = new File(str);
            if (!file.exists()) {
                return;
            }
            file.delete();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: h */
    public static long m28213h(int i, AbstractC1995b abstractC1995b) {
        ?? m28219b = m28219b(abstractC1995b.mo28346d(Headers.HEAD_KEY_CONTENT_LENGTH));
        String mo28346d = abstractC1995b.mo28346d("Transfer-Encoding");
        char c = m28219b;
        if (m28219b < 0) {
            if (!(mo28346d != null && mo28346d.equals("chunked"))) {
                if (!C2037e.m28244a().f7154c) {
                    throw new FileDownloadGiveUpRetryException("can't know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties");
                }
                if (C2036d.f7151a) {
                    C2036d.m28253a(C2040f.class, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk", Integer.valueOf(i));
                }
            }
            c = 65535;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: i */
    public static long m28212i(AbstractC1995b abstractC1995b) {
        ?? m28224R = m28224R(m28201t(abstractC1995b));
        char c = m28224R;
        if (m28224R < 0) {
            c = 65535;
        }
        return c;
    }

    /* renamed from: j */
    public static String m28211j(int i, AbstractC1995b abstractC1995b) {
        if (abstractC1995b != null) {
            String mo28346d = abstractC1995b.mo28346d("Etag");
            if (C2036d.f7151a) {
                C2036d.m28253a(C2040f.class, "etag find %s for task(%d)", mo28346d, Integer.valueOf(i));
            }
            return mo28346d;
        }
        throw new RuntimeException("connection is null when findEtag");
    }

    /* renamed from: k */
    static String m28210k(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            String path = new URL(str).getPath();
            String substring = path.substring(path.lastIndexOf(47) + 1);
            if (!substring.isEmpty()) {
                return substring;
            }
            return null;
        } catch (MalformedURLException e) {
            return null;
        }
    }

    /* renamed from: l */
    public static String m28209l(AbstractC1995b abstractC1995b, String str) {
        String m28225Q = m28225Q(abstractC1995b.mo28346d(Headers.HEAD_KEY_CONTENT_DISPOSITION));
        String str2 = m28225Q;
        if (TextUtils.isEmpty(m28225Q)) {
            str2 = m28210k(str);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = m28205p(str);
        } else if (str2.contains("../")) {
            throw new FileDownloadSecurityException(m28206o("The filename [%s] from the response is not allowable, because it contains '../', which can raise the directory traversal vulnerability", str2));
        }
        return str2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* renamed from: m */
    public static long m28208m(AbstractC1995b abstractC1995b) {
        ?? m28207n = m28207n(abstractC1995b);
        char c = m28207n;
        if (m28207n < 0) {
            C2036d.m28245i(C2040f.class, "don't get instance length fromContent-Range header", new Object[0]);
            c = 65535;
        }
        if (c == 0 && C2037e.m28244a().f7159h) {
            c = 65535;
        }
        return c;
    }

    /* renamed from: n */
    public static long m28207n(AbstractC1995b abstractC1995b) {
        return m28223S(m28201t(abstractC1995b));
    }

    /* renamed from: o */
    public static String m28206o(String str, Object... objArr) {
        return String.format(Locale.ENGLISH, str, objArr);
    }

    /* renamed from: p */
    public static String m28205p(String str) {
        return m28227O(str);
    }

    /* renamed from: q */
    public static String m28204q(String str, String str2) {
        if (str2 != null) {
            if (str == null) {
                throw new IllegalStateException("can't generate real path, the directory is null");
            }
            return m28206o("%s%s%s", str, File.separator, str2);
        }
        throw new IllegalStateException("can't generate real path, the file name is null");
    }

    /* renamed from: r */
    public static int m28203r(String str, String str2) {
        return C9351c.m979j().m980i().mo808a(str, str2, false);
    }

    /* renamed from: s */
    public static int m28202s(String str, String str2, boolean z) {
        return C9351c.m979j().m980i().mo808a(str, str2, z);
    }

    /* renamed from: t */
    private static String m28201t(AbstractC1995b abstractC1995b) {
        return abstractC1995b.mo28346d(Headers.HEAD_KEY_CONTENT_RANGE);
    }

    /* renamed from: u */
    public static File m28200u(Context context) {
        return new File(context.getFilesDir().getAbsolutePath() + File.separator + "filedownloader", ".old_file_converted");
    }

    /* renamed from: v */
    public static String m28199v(String str) {
        return m28204q(m28198w(), m28205p(str));
    }

    /* renamed from: w */
    public static String m28198w() {
        if (!TextUtils.isEmpty(f7163c)) {
            return f7163c;
        }
        boolean z = false;
        if (C2031c.m28262a().getExternalCacheDir() != null) {
            z = false;
            if (Environment.getExternalStorageState().equals("mounted")) {
                z = false;
                if (Environment.getExternalStorageDirectory().getFreeSpace() > 0) {
                    z = true;
                }
            }
        }
        return z ? C2031c.m28262a().getExternalCacheDir().getAbsolutePath() : C2031c.m28262a().getCacheDir().getAbsolutePath();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: x */
    public static long m28197x(String str) {
        StatFs statFs = new StatFs(str);
        return Build.VERSION.SDK_INT >= 18 ? statFs.getAvailableBytes() : statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    /* renamed from: y */
    public static int m28196y() {
        return f7161a;
    }

    /* renamed from: z */
    public static long m28195z() {
        return f7162b;
    }
}
