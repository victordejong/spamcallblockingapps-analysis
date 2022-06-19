package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/BksUtil.class */
public class BksUtil {

    /* renamed from: a */
    private static final String f8078a = "BksUtil";

    /* renamed from: b */
    private static final String f8079b = "com.huawei.hwid";

    /* renamed from: c */
    private static final String f8080c = "com.huawei.hwid";

    /* renamed from: d */
    private static final String f8081d = "com.huawei.hms";

    /* renamed from: e */
    private static final String f8082e = "com.huawei.hwid.tv";

    /* renamed from: g */
    private static final String f8084g = "files/hmsrootcas.bks";

    /* renamed from: h */
    private static final String f8085h = "4.0.2.300";

    /* renamed from: i */
    private static final String f8086i = "aegis";

    /* renamed from: j */
    private static final String f8087j = "hmsrootcas.bks";

    /* renamed from: k */
    private static final long f8088k = 604800000;

    /* renamed from: l */
    private static final String f8089l = "last_update_time";

    /* renamed from: m */
    private static final String f8090m = "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05";

    /* renamed from: n */
    private static final String f8091n = "3517262215D8D3008CBF888750B6418EDC4D562AC33ED6874E0D73ABA667BC3C";

    /* renamed from: q */
    private static final String f8094q = "";

    /* renamed from: r */
    private static final String f8095r = "bks_hash";

    /* renamed from: f */
    private static final Uri f8083f = Uri.parse("content://com.huawei.hwid");

    /* renamed from: o */
    private static final String f8092o = "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539";

    /* renamed from: p */
    private static final String[] f8093p = {"B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05", f8092o};

    private BksUtil() {
    }

    /* renamed from: a */
    private static int m36999a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        File file = new File(str);
        if (file.exists()) {
            C2493g.m36953e(f8078a, "The directory  has already exists");
            return 1;
        } else if (file.mkdirs()) {
            C2493g.m36958a(f8078a, "create directory  success");
            return 0;
        } else {
            C2493g.m36956b(f8078a, "create directory  failed");
            return -1;
        }
    }

    /* renamed from: a */
    private static String m37002a(Context context) {
        String str;
        if (Build.VERSION.SDK_INT >= 24) {
            StringBuilder sb = new StringBuilder();
            sb.append(context.createDeviceProtectedStorageContext().getFilesDir());
            str = C22128a.m8618h(sb, File.separator, f8086i);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(context.getApplicationContext().getFilesDir());
            str = C22128a.m8618h(sb2, File.separator, f8086i);
        }
        return str;
    }

    /* renamed from: a */
    private static String m36998a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m37000a(InputStream inputStream, Context context) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        if (inputStream == null || context == null) {
            return;
        }
        String m37002a = m37002a(context);
        if (!new File(m37002a).exists()) {
            m36999a(m37002a);
        }
        File file = new File(m37002a, "hmsrootcas.bks");
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                C2493g.m36955c(f8078a, "write output stream ");
                fileOutputStream2 = new FileOutputStream(file);
            } catch (IOException e) {
                fileOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read == -1) {
                    AbstractC2492f.m36965a((OutputStream) fileOutputStream2);
                    return;
                }
                fileOutputStream2.write(bArr, 0, read);
            }
        } catch (IOException e2) {
            fileOutputStream = fileOutputStream2;
            fileOutputStream3 = fileOutputStream;
            C2493g.m36956b(f8078a, " IOException");
            AbstractC2492f.m36965a((OutputStream) fileOutputStream);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            AbstractC2492f.m36965a((OutputStream) fileOutputStream3);
            throw th;
        }
    }

    /* renamed from: a */
    private static boolean m37003a(int i) {
        return i >= 40002300;
    }

    /* renamed from: a */
    private static byte[] m37001a(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.getMessage();
        } catch (Exception e2) {
            e2.getMessage();
        }
        return new byte[0];
    }

    /* renamed from: b */
    private static String m36997b(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(m37002a(context));
        return C22128a.m8618h(sb, File.separator, "hmsrootcas.bks");
    }

    /* renamed from: b */
    private static String m36994b(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return m36998a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            C2493g.m36956b(f8078a, "inputstraem exception");
            return "";
        }
    }

    /* renamed from: b */
    private static boolean m36996b(Context context, String str) {
        return f8092o.equalsIgnoreCase(m36991c(m37001a(context, str)));
    }

    /* renamed from: b */
    private static boolean m36995b(String str) {
        int parseInt;
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        C2493g.m36955c(f8078a, "hms version code is : " + str);
        String[] split = str.split("\\.");
        String[] split2 = f8085h.split("\\.");
        int length = split.length;
        int length2 = split2.length;
        int max = Math.max(length, length2);
        int i = 0;
        while (i < max) {
            if (i < length) {
                try {
                    parseInt = Integer.parseInt(split[i]);
                } catch (Exception e) {
                    StringBuilder m8728C = C22128a.m8728C(" exception : ");
                    m8728C.append(e.getMessage());
                    C2493g.m36956b(f8078a, m8728C.toString());
                    if (i >= length2) {
                        z = true;
                    }
                    return z;
                }
            } else {
                parseInt = 0;
            }
            int parseInt2 = i < length2 ? Integer.parseInt(split2[i]) : 0;
            if (parseInt < parseInt2) {
                return false;
            }
            if (parseInt > parseInt2) {
                return true;
            }
            i++;
        }
        return true;
    }

    /* renamed from: c */
    private static String m36991c(byte[] bArr) {
        String str = "";
        if (bArr != null) {
            if (bArr.length == 0) {
                str = "";
            } else {
                try {
                    str = m36998a(MessageDigest.getInstance("SHA-256").digest(bArr));
                } catch (NoSuchAlgorithmException e) {
                    e.getMessage();
                    str = "";
                }
            }
        }
        return str;
    }

    /* renamed from: c */
    private static boolean m36993c(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(m37002a(context));
        return new File(C22128a.m8618h(sb, File.separator, "hmsrootcas.bks")).exists();
    }

    /* renamed from: c */
    private static boolean m36992c(Context context, String str) {
        byte[] m37001a = m37001a(context, str);
        for (String str2 : f8093p) {
            if (str2.equalsIgnoreCase(m36991c(m37001a))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x018a: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:71:0x018a */
    public static InputStream getBksFromTss(Context context) {
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayInputStream byteArrayInputStream;
        String m36946a;
        String m36994b;
        synchronized (BksUtil.class) {
            try {
                C2493g.m36955c(f8078a, "get bks from tss begin");
                if (context != null) {
                    C2489c.m36978a(context);
                }
                Context m36979a = C2489c.m36979a();
                ByteArrayInputStream byteArrayInputStream2 = null;
                if (m36979a == null) {
                    C2493g.m36956b(f8078a, "context is null");
                    return null;
                } else if (!m36995b(C2494h.m36952a("com.huawei.hwid")) && !m36995b(C2494h.m36952a("com.huawei.hms"))) {
                    C2493g.m36956b(f8078a, "hms version code is too low : " + C2494h.m36952a("com.huawei.hwid"));
                    return null;
                } else if (!m36992c(m36979a, "com.huawei.hwid") && !m36996b(m36979a, "com.huawei.hms")) {
                    C2493g.m36956b(f8078a, "hms sign error");
                    return null;
                } else {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            inputStream = m36979a.getContentResolver().openInputStream(Uri.withAppendedPath(f8083f, f8084g));
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read <= -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, read);
                                }
                                byteArrayOutputStream.flush();
                                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            } catch (Exception e) {
                                byteArrayInputStream = null;
                            }
                        } catch (Exception e2) {
                            inputStream = null;
                            byteArrayInputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                    }
                    try {
                        m36946a = C2495i.m36946a(f8095r, "", m36979a);
                        m36994b = m36994b(byteArrayOutputStream.toByteArray());
                    } catch (Exception e3) {
                        C2493g.m36956b(f8078a, "Get bks from HMS_VERSION_CODE exception : No content provider");
                        AbstractC2492f.m36968a(inputStream);
                        AbstractC2492f.m36965a((OutputStream) byteArrayOutputStream);
                        AbstractC2492f.m36968a((InputStream) byteArrayInputStream);
                        return getFilesBksIS(m36979a);
                    } catch (Throwable th4) {
                        byteArrayInputStream2 = byteArrayInputStream;
                        th = th4;
                        AbstractC2492f.m36968a(inputStream);
                        AbstractC2492f.m36965a((OutputStream) byteArrayOutputStream);
                        AbstractC2492f.m36968a((InputStream) byteArrayInputStream2);
                        throw th;
                    }
                    if (m36993c(m36979a) && m36946a.equals(m36994b)) {
                        C2493g.m36955c(f8078a, "bks not update");
                        AbstractC2492f.m36968a(inputStream);
                        AbstractC2492f.m36965a((OutputStream) byteArrayOutputStream);
                        AbstractC2492f.m36968a((InputStream) byteArrayInputStream);
                        return getFilesBksIS(m36979a);
                    }
                    C2493g.m36955c(f8078a, "update bks and sp");
                    m37000a(byteArrayInputStream, m36979a);
                    C2495i.m36942b(f8095r, m36994b, m36979a);
                    AbstractC2492f.m36968a(inputStream);
                    AbstractC2492f.m36965a((OutputStream) byteArrayOutputStream);
                    AbstractC2492f.m36968a((InputStream) byteArrayInputStream);
                    return getFilesBksIS(m36979a);
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public static InputStream getFilesBksIS(Context context) {
        if (m36993c(context)) {
            C2493g.m36955c(f8078a, "getFilesBksIS ");
            try {
                return new FileInputStream(m36997b(context));
            } catch (FileNotFoundException e) {
                C2493g.m36956b(f8078a, "FileNotFoundExceptio: ");
                return null;
            }
        }
        return null;
    }
}
