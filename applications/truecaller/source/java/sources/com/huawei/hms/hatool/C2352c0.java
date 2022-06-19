package com.huawei.hms.hatool;

import com.huawei.secure.android.common.encrypt.hash.PBKDF2;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.c0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/c0.class */
public class C2352c0 {

    /* renamed from: a */
    public String f7505a = AbstractC2349b.m37779i().getFilesDir().getPath();

    /* renamed from: b */
    public static boolean m37748b(File file) {
        File[] listFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null || listFiles.length == 0) {
            return false;
        }
        for (File file2 : listFiles) {
            if (file2.isFile()) {
                if (!file2.delete()) {
                    StringBuilder m8728C = C22128a.m8728C("delete file failed : ");
                    m8728C.append(file2.getName());
                    C2398y.m37473c("hmsSdk", m8728C.toString());
                }
            } else if (file2.isDirectory()) {
                m37748b(file2);
            }
        }
        return file.delete();
    }

    /* renamed from: d */
    public static boolean m37745d() {
        return m37748b(new File(AbstractC2349b.m37779i().getFilesDir().getPath() + StringConstant.SLASH + "hms"));
    }

    /* renamed from: a */
    public String m37754a() {
        String str;
        String str2;
        String str3;
        String str4;
        String m37746c = m37746c();
        if (m37749b()) {
            C2398y.m37473c("hmsSdk", "refresh components");
            str4 = EncryptUtil.generateSecureRandomStr(128);
            m37751a("aprpap", str4);
            str3 = EncryptUtil.generateSecureRandomStr(128);
            m37751a("febdoc", str3);
            str2 = EncryptUtil.generateSecureRandomStr(128);
            m37751a("marfil", str2);
            str = EncryptUtil.generateSecureRandomStr(128);
            m37751a("maywnj", str);
            C2362g0.m37693b(AbstractC2349b.m37779i(), "Privacy_MY", "assemblyFlash", System.currentTimeMillis());
        } else {
            str4 = m37747b("aprpap");
            str3 = m37747b("febdoc");
            str2 = m37747b("marfil");
            str = m37747b("maywnj");
        }
        return HexUtil.byteArray2HexStr(PBKDF2.pbkdf2(m37750a(str4, str3, str2, m37746c), HexUtil.hexStr2ByteArray(str), 10000, 16));
    }

    /* renamed from: a */
    public final String m37752a(String str) {
        return this.f7505a + "/hms/component/".replace("component", str);
    }

    /* renamed from: a */
    public final void m37751a(String str, String str2) {
        File file = new File(m37752a(str));
        File file2 = new File(m37752a(str), C22128a.m8543z2("hianalytics_", str));
        if (!file.exists() && file.mkdirs()) {
            C2398y.m37473c("hmsSdk", "file directory is mkdirs");
        }
        if (m37753a(file2)) {
            C2388t0.m37527a(file2, str2);
        } else {
            C2398y.m37469f("hmsSdk", "refreshComponent():file is not found,and file is create failed");
        }
    }

    /* renamed from: a */
    public final boolean m37753a(File file) {
        if (file.exists()) {
            return true;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            C2398y.m37469f("hmsSdk", "create new file error!");
            return false;
        }
    }

    /* renamed from: a */
    public final char[] m37750a(String str, String str2, String str3, String str4) {
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str);
        byte[] hexStr2ByteArray2 = HexUtil.hexStr2ByteArray(str2);
        byte[] hexStr2ByteArray3 = HexUtil.hexStr2ByteArray(str3);
        byte[] hexStr2ByteArray4 = HexUtil.hexStr2ByteArray(str4);
        int length = hexStr2ByteArray.length;
        int i = length;
        if (length > hexStr2ByteArray2.length) {
            i = hexStr2ByteArray2.length;
        }
        int i2 = i;
        if (i > hexStr2ByteArray3.length) {
            i2 = hexStr2ByteArray3.length;
        }
        int i3 = i2;
        if (i2 > hexStr2ByteArray4.length) {
            i3 = hexStr2ByteArray4.length;
        }
        char[] cArr = new char[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            cArr[i4] = (char) (((hexStr2ByteArray[i4] ^ hexStr2ByteArray2[i4]) ^ hexStr2ByteArray3[i4]) ^ hexStr2ByteArray4[i4]);
        }
        return cArr;
    }

    /* renamed from: b */
    public final String m37747b(String str) {
        File file = new File(m37752a(str), C22128a.m8543z2("hianalytics_", str));
        if (m37753a(file)) {
            return C2388t0.m37528a(file);
        }
        String generateSecureRandomStr = EncryptUtil.generateSecureRandomStr(128);
        C2388t0.m37527a(file, generateSecureRandomStr);
        return generateSecureRandomStr;
    }

    /* renamed from: b */
    public final boolean m37749b() {
        long m37697a = C2362g0.m37697a(AbstractC2349b.m37779i(), "Privacy_MY", "assemblyFlash", -1L);
        boolean z = true;
        if (-1 == m37697a) {
            C2398y.m37473c("hmsSdk", "First init components");
            return true;
        }
        if (System.currentTimeMillis() - m37697a <= 31536000000L) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public final String m37746c() {
        return "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc";
    }
}
