package p092e.p096e.p097a.p102h0;

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
import com.lidroid.xutils.http.client.multipart.MIME;
import com.liulishuo.filedownloader.download.C2746c;
import com.liulishuo.filedownloader.exception.FileDownloadSecurityException;
import com.liulishuo.filedownloader.model.FileDownloadModel;
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
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p101g0.AbstractC3047a;
/* renamed from: e.e.a.h0.f */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/f.class */
public class C3066f {

    /* renamed from: a */
    private static int f12692a = 65536;

    /* renamed from: b */
    private static long f12693b = 2000;

    /* renamed from: c */
    private static String f12694c;

    /* renamed from: d */
    private static Boolean f12695d;

    /* renamed from: e */
    private static final Pattern f12696e = Pattern.compile("attachment;\\s*filename\\*\\s*=\\s*\"*([^\"]*)'\\S*'([^\"]*)\"*");

    /* renamed from: f */
    private static final Pattern f12697f = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"*([^\"\\n]*)\"*");

    /* renamed from: A */
    public static String m402A(String str) {
        int length = str.length();
        int i = 2;
        int i2 = (File.separatorChar == '\\' && length > 2 && str.charAt(1) == ':') ? 2 : 0;
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf != -1 || i2 <= 0) {
            i = lastIndexOf;
        }
        if (i == -1) {
            return null;
        }
        char charAt = str.charAt(length - 1);
        char c = File.separatorChar;
        if (charAt == c) {
            return null;
        }
        return (str.indexOf(c) == i && str.charAt(i2) == File.separatorChar) ? str.substring(0, i + 1) : str.substring(0, i);
    }

    /* renamed from: B */
    public static String m401B(String str, boolean z, String str2) {
        if (str == null) {
            return null;
        }
        String str3 = str;
        if (z) {
            if (str2 == null) {
                return null;
            }
            str3 = m365q(str, str2);
        }
        return str3;
    }

    /* renamed from: C */
    public static String m400C(String str) {
        return m367o("%s.temp", str);
    }

    /* renamed from: D */
    public static String m399D(String str) {
        return "FileDownloader-" + str;
    }

    /* renamed from: E */
    public static boolean m398E(int i, AbstractC3020b bVar) {
        if (i == 206 || i == 1) {
            return true;
        }
        return "bytes".equals(bVar.mo522e("Accept-Ranges"));
    }

    /* renamed from: F */
    private static boolean m397F(Context context) {
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
    public static boolean m396G(int i, FileDownloadModel fileDownloadModel) {
        return m395H(i, fileDownloadModel, null);
    }

    /* renamed from: H */
    public static boolean m395H(int i, FileDownloadModel fileDownloadModel, Boolean bool) {
        if (fileDownloadModel == null) {
            if (!C3062d.f12682a) {
                return false;
            }
            C3062d.m414a(C3066f.class, "can't continue %d model == null", Integer.valueOf(i));
            return false;
        } else if (fileDownloadModel.m1808l() != null) {
            return m394I(i, fileDownloadModel, fileDownloadModel.m1808l(), bool);
        } else {
            if (!C3062d.f12682a) {
                return false;
            }
            C3062d.m414a(C3066f.class, "can't continue %d temp path == null", Integer.valueOf(i));
            return false;
        }
    }

    /* renamed from: I */
    public static boolean m394I(int i, FileDownloadModel fileDownloadModel, String str, Boolean bool) {
        boolean z;
        if (str == null) {
            z = false;
            if (C3062d.f12682a) {
                C3062d.m414a(C3066f.class, "can't continue %d path = null", Integer.valueOf(i));
                z = false;
            }
        } else {
            File file = new File(str);
            boolean exists = file.exists();
            boolean isDirectory = file.isDirectory();
            if (!exists || isDirectory) {
                z = false;
                if (C3062d.f12682a) {
                    C3062d.m414a(C3066f.class, "can't continue %d file not suit, exists[%B], directory[%B]", Integer.valueOf(i), Boolean.valueOf(exists), Boolean.valueOf(isDirectory));
                    z = false;
                }
            } else {
                long length = file.length();
                long g = fileDownloadModel.m1811g();
                if (fileDownloadModel.m1817a() > 1 || g != 0) {
                    long m = fileDownloadModel.m1807m();
                    if (length < g || (m != -1 && (length > m || g >= m))) {
                        z = false;
                        if (C3062d.f12682a) {
                            C3062d.m414a(C3066f.class, "can't continue %d dirty data fileLength[%d] sofar[%d] total[%d]", Integer.valueOf(i), Long.valueOf(length), Long.valueOf(g), Long.valueOf(m));
                            z = false;
                        }
                    } else if (bool == null || bool.booleanValue() || m != length) {
                        z = true;
                    } else {
                        z = false;
                        if (C3062d.f12682a) {
                            C3062d.m414a(C3066f.class, "can't continue %d, because of the output stream doesn't support seek, but the task has already pre-allocated, so we only can download it from the very beginning.", Integer.valueOf(i));
                            z = false;
                        }
                    }
                } else {
                    z = false;
                    if (C3062d.f12682a) {
                        C3062d.m414a(C3066f.class, "can't continue %d the downloaded-record is zero.", Integer.valueOf(i));
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: J */
    public static boolean m393J(Context context) {
        Boolean bool = f12695d;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = false;
        if (!C3063e.m405a().f12686d) {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
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
                    C3062d.m406i(C3066f.class, "The running app process info list from ActivityManager is null or empty, maybe current App is not running.", new Object[0]);
                    return false;
                }
            } else {
                C3062d.m406i(C3066f.class, "fail to get the activity manager!", new Object[0]);
                return false;
            }
        } else {
            z = true;
        }
        Boolean valueOf = Boolean.valueOf(z);
        f12695d = valueOf;
        return valueOf.booleanValue();
    }

    /* renamed from: K */
    public static boolean m392K(String str) {
        return true;
    }

    /* renamed from: L */
    public static boolean m391L(long j, long j2) {
        return j > ((long) m357y()) && j2 > m356z();
    }

    /* renamed from: M */
    public static boolean m390M() {
        ConnectivityManager connectivityManager = (ConnectivityManager) C3056c.m426a().getSystemService("connectivity");
        boolean z = false;
        if (connectivityManager == null) {
            C3062d.m406i(C3066f.class, "failed to get connectivity manager!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: N */
    public static void m389N(Context context) {
        File u = m361u(context);
        try {
            u.getParentFile().mkdirs();
            u.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: O */
    public static String m388O(String str) {
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
    public static boolean m387P(Context context) {
        return Build.VERSION.SDK_INT >= 26 && !m397F(context);
    }

    /* renamed from: Q */
    public static String m386Q(String str) {
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = f12696e.matcher(str);
            if (matcher.find()) {
                return URLDecoder.decode(matcher.group(2), matcher.group(1));
            }
            Matcher matcher2 = f12697f.matcher(str);
            if (matcher2.find()) {
                return matcher2.group(1);
            }
            return null;
        } catch (UnsupportedEncodingException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: R */
    public static long m385R(String str) {
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
            C3062d.m412c(C3066f.class, e, "parse content length from content range error", new Object[0]);
            return -1L;
        }
    }

    /* renamed from: S */
    public static long m384S(String str) {
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
            C3062d.m406i(C3066f.class, "parse instance length failed with %s", str);
            return -1L;
        }
    }

    /* renamed from: T */
    public static void m383T(int i) {
        if (m393J(C3056c.m426a())) {
            f12692a = i;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-step'.");
    }

    /* renamed from: U */
    public static void m382U(long j) {
        if (m393J(C3056c.m426a())) {
            f12693b = j;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-time'.");
    }

    /* renamed from: a */
    public static boolean m381a(String str) {
        return C3056c.m426a().checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: b */
    public static long m380b(String str) {
        long j = -1;
        if (str == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    /* renamed from: c */
    public static AbstractC3047a m379c(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("found invalid internal destination path, empty");
        } else if (m392K(str)) {
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                throw new RuntimeException(m367o("found invalid internal destination path[%s], & path is directory[%B]", str, Boolean.valueOf(file.isDirectory())));
            } else if (file.exists() || file.createNewFile()) {
                return C2746c.m1933j().m1941b(file);
            } else {
                throw new IOException(m367o("create new file error  %s", file.getAbsolutePath()));
            }
        } else {
            throw new RuntimeException(m367o("found invalid internal destination filename %s", str));
        }
    }

    /* renamed from: d */
    public static String m378d() {
        return m367o("FileDownloader/%s", "1.7.7");
    }

    /* renamed from: e */
    public static void m377e(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* renamed from: f */
    public static void m376f(String str, String str2) {
        m375g(str2);
        m377e(str);
    }

    /* renamed from: g */
    public static void m375g(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m374h(int r7, p092e.p096e.p097a.p098d0.AbstractC3020b r8) {
        /*
            r0 = r8
            java.lang.String r1 = "Content-Length"
            java.lang.String r0 = r0.mo522e(r1)
            long r0 = m380b(r0)
            r9 = r0
            r0 = r8
            java.lang.String r1 = "Transfer-Encoding"
            java.lang.String r0 = r0.mo522e(r1)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0071
            r0 = r8
            if (r0 == 0) goto L_0x0034
            r0 = r8
            java.lang.String r1 = "chunked"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0034
            r0 = 1
            r13 = r0
            goto L_0x0037
        L_0x0034:
            r0 = 0
            r13 = r0
        L_0x0037:
            r0 = r13
            if (r0 != 0) goto L_0x006c
            e.e.a.h0.e r0 = p092e.p096e.p097a.p102h0.C3063e.m405a()
            boolean r0 = r0.f12685c
            if (r0 == 0) goto L_0x0061
            boolean r0 = p092e.p096e.p097a.p102h0.C3062d.f12682a
            if (r0 == 0) goto L_0x006c
            java.lang.Class<e.e.a.h0.f> r0 = p092e.p096e.p097a.p102h0.C3066f.class
            java.lang.String r1 = "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r7
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r3[r4] = r5
            p092e.p096e.p097a.p102h0.C3062d.m414a(r0, r1, r2)
            goto L_0x006c
        L_0x0061:
            com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException r0 = new com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException
            r1 = r0
            java.lang.String r2 = "can't know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties"
            r1.<init>(r2)
            throw r0
        L_0x006c:
            r0 = -1
            r11 = r0
        L_0x0071:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p092e.p096e.p097a.p102h0.C3066f.m374h(int, e.e.a.d0.b):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m373i(p092e.p096e.p097a.p098d0.AbstractC3020b r5) {
        /*
            r0 = r5
            java.lang.String r0 = m362t(r0)
            long r0 = m385R(r0)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = -1
            r8 = r0
        L_0x0014:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p092e.p096e.p097a.p102h0.C3066f.m373i(e.e.a.d0.b):long");
    }

    /* renamed from: j */
    public static String m372j(int i, AbstractC3020b bVar) {
        if (bVar != null) {
            String e = bVar.mo522e("Etag");
            if (C3062d.f12682a) {
                C3062d.m414a(C3066f.class, "etag find %s for task(%d)", e, Integer.valueOf(i));
            }
            return e;
        }
        throw new RuntimeException("connection is null when findEtag");
    }

    /* renamed from: k */
    static String m371k(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            String path = new URL(str).getPath();
            String substring = path.substring(path.lastIndexOf(47) + 1);
            if (substring.isEmpty()) {
                return null;
            }
            return substring;
        } catch (MalformedURLException e) {
            return null;
        }
    }

    /* renamed from: l */
    public static String m370l(AbstractC3020b bVar, String str) {
        String Q = m386Q(bVar.mo522e(MIME.CONTENT_DISPOSITION));
        String str2 = Q;
        if (TextUtils.isEmpty(Q)) {
            str2 = m371k(str);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = m366p(str);
        } else if (str2.contains("../")) {
            throw new FileDownloadSecurityException(m367o("The filename [%s] from the response is not allowable, because it contains '../', which can raise the directory traversal vulnerability", str2));
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m369m(p092e.p096e.p097a.p098d0.AbstractC3020b r5) {
        /*
            r0 = r5
            long r0 = m368n(r0)
            r6 = r0
            r0 = -1
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0023
            java.lang.Class<e.e.a.h0.f> r0 = p092e.p096e.p097a.p102h0.C3066f.class
            java.lang.String r1 = "don't get instance length fromContent-Range header"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            p092e.p096e.p097a.p102h0.C3062d.m406i(r0, r1, r2)
            r0 = -1
            r10 = r0
        L_0x0023:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            e.e.a.h0.e r0 = p092e.p096e.p097a.p102h0.C3063e.m405a()
            boolean r0 = r0.f12690h
            if (r0 == 0) goto L_0x0039
            r0 = r8
            r10 = r0
            goto L_0x0039
        L_0x0039:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p092e.p096e.p097a.p102h0.C3066f.m369m(e.e.a.d0.b):long");
    }

    /* renamed from: n */
    public static long m368n(AbstractC3020b bVar) {
        return m384S(m362t(bVar));
    }

    /* renamed from: o */
    public static String m367o(String str, Object... objArr) {
        return String.format(Locale.ENGLISH, str, objArr);
    }

    /* renamed from: p */
    public static String m366p(String str) {
        return m388O(str);
    }

    /* renamed from: q */
    public static String m365q(String str, String str2) {
        if (str2 == null) {
            throw new IllegalStateException("can't generate real path, the file name is null");
        } else if (str != null) {
            return m367o("%s%s%s", str, File.separator, str2);
        } else {
            throw new IllegalStateException("can't generate real path, the directory is null");
        }
    }

    /* renamed from: r */
    public static int m364r(String str, String str2) {
        return C2746c.m1933j().m1934i().mo418a(str, str2, false);
    }

    /* renamed from: s */
    public static int m363s(String str, String str2, boolean z) {
        return C2746c.m1933j().m1934i().mo418a(str, str2, z);
    }

    /* renamed from: t */
    private static String m362t(AbstractC3020b bVar) {
        return bVar.mo522e("Content-Range");
    }

    /* renamed from: u */
    public static File m361u(Context context) {
        return new File(context.getFilesDir().getAbsolutePath() + File.separator + "filedownloader", ".old_file_converted");
    }

    /* renamed from: v */
    public static String m360v(String str) {
        return m365q(m359w(), m366p(str));
    }

    /* renamed from: w */
    public static String m359w() {
        if (!TextUtils.isEmpty(f12694c)) {
            return f12694c;
        }
        boolean z = false;
        if (C3056c.m426a().getExternalCacheDir() != null) {
            z = false;
            if (Environment.getExternalStorageState().equals("mounted")) {
                z = false;
                if (Environment.getExternalStorageDirectory().getFreeSpace() > 0) {
                    z = true;
                }
            }
        }
        return (z ? C3056c.m426a().getExternalCacheDir() : C3056c.m426a().getCacheDir()).getAbsolutePath();
    }

    /* renamed from: x */
    public static long m358x(String str) {
        StatFs statFs = new StatFs(str);
        return Build.VERSION.SDK_INT >= 18 ? statFs.getAvailableBytes() : statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    /* renamed from: y */
    public static int m357y() {
        return f12692a;
    }

    /* renamed from: z */
    public static long m356z() {
        return f12693b;
    }
}
