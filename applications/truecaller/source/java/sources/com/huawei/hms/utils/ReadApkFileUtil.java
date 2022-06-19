package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import com.huawei.hms.support.log.HMSLog;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/ReadApkFileUtil.class */
public class ReadApkFileUtil {
    public static final String EMUI10_PK = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB";
    public static final String EMUI11_PK = "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE=";
    public static final String KEY_SIGNATURE = "Signature:";
    public static final String KEY_SIGNATURE2 = "Signature2:";
    public static final String KEY_SIGNATURE3 = "Signature3:";

    /* renamed from: a */
    public static final String f7873a = "ReadApkFileUtil";

    /* renamed from: b */
    public static String f7874b;

    /* renamed from: c */
    public static String f7875c;

    /* renamed from: d */
    public static String f7876d;

    /* renamed from: e */
    public static String f7877e;

    /* renamed from: f */
    public static String f7878f;

    /* renamed from: a */
    public static String m37135a(BufferedReader bufferedReader) throws IOException {
        char c;
        if (bufferedReader == null) {
            return null;
        }
        int read = bufferedReader.read();
        if (read == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder(10);
        while (read != -1 && (c = (char) read) != '\n') {
            if (sb.length() >= 4096) {
                throw new IOException("cert line is too long!");
            }
            sb.append(c);
            read = bufferedReader.read();
        }
        String sb2 = sb.toString();
        String str = sb2;
        if (!sb2.isEmpty()) {
            str = sb2;
            if (sb2.endsWith("\r")) {
                str = sb2.substring(0, sb2.length() - 1);
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m37133a(String str) {
        String str2 = "";
        if (str != null) {
            str2 = Pattern.compile("\\s*|\t|\r|\n").matcher(str).replaceAll("");
        }
        return str2;
    }

    /* renamed from: a */
    public static ArrayList<String> m37128a(byte[] bArr) {
        if (bArr == null) {
            HMSLog.m37195e(f7873a, "manifest is null！");
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream, StandardCharsets.UTF_8));
            try {
                if (!m37134a(bufferedReader, arrayList)) {
                    bufferedReader.close();
                    byteArrayInputStream.close();
                    return null;
                }
                bufferedReader.close();
                byteArrayInputStream.close();
                return arrayList;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } catch (IOException e) {
            HMSLog.m37195e(f7873a, "getManifestLinesArrary IOException!");
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m37136a() {
        try {
            if (m37127a(m37125b("30820122300d06092a864886f70d01010105000382010f003082010a0282010100a3d269348ac59923f65e8111c337605e29a1d1bc54fa96c1445050dd14d8d63b10f9f0230bb87ef348183660bedcabfdec045e235ed96935799fcdb4af5c97717ff3b0954eaf1b723225b3a00f81cbd67ce6dc5a4c07f7741ad3bf1913a480c6e267ab1740f409edd2dc33c8b718a8e30e56d9a93f321723c1d0c9ea62115f996812ceef186954595e39a19b74245542c407f7dddb1d12e6eedcfc0bd7cd945ef7255ad0fc9e796258e0fb5e52a23013d15033a32b4071b65f3f924ae5c5761e22327b4d2ae60f4158a5eb15565ba079de29b81540f5fbb3be101a95357f367fc661d797074ff3826950029c52223e4594673a24a334cae62d63b838ba3df9770203010001"), m37132a(f7878f, "SHA-256"), m37125b(f7874b), "SHA256withRSA")) {
                HMSLog.m37193i(f7873a, "verifyMDMSignatureV1 verify successful!");
                return true;
            }
            HMSLog.m37193i(f7873a, "verifyMDMSignatureV1 verify failure!");
            return false;
        } catch (Exception e) {
            String str = f7873a;
            StringBuilder m8728C = C22128a.m8728C("verifyMDMSignatureV1 MDM verify Exception!:");
            m8728C.append(e.getMessage());
            HMSLog.m37193i(str, m8728C.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m37134a(BufferedReader bufferedReader, ArrayList<String> arrayList) throws IOException {
        String m37135a = m37135a(bufferedReader);
        boolean z = false;
        while (m37135a != null) {
            String str = m37135a;
            if (m37135a.equals("Name: META-INF/HUAWEI.CER")) {
                String m37135a2 = m37135a(bufferedReader);
                while (true) {
                    String str2 = m37135a2;
                    str = m37135a;
                    z = true;
                    if (str2 == null) {
                        break;
                    } else if (str2.startsWith("Name:")) {
                        str = str2;
                        z = true;
                        break;
                    } else {
                        m37135a2 = m37135a(bufferedReader);
                    }
                }
            }
            if (str.length() != 0) {
                arrayList.add(str);
            }
            m37135a = m37135a(bufferedReader);
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m37127a(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws Exception {
        Signature signature = Signature.getInstance(str);
        signature.initVerify(KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr)));
        signature.update(bArr2);
        return signature.verify(bArr3);
    }

    /* renamed from: a */
    public static byte[] m37132a(String str, String str2) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        messageDigest.update(str.getBytes(StandardCharsets.UTF_8.name()));
        return messageDigest.digest();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static byte[] m37131a(ArrayList<String> arrayList) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.UTF_8));
        try {
            try {
                Collections.sort(arrayList);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    String str = arrayList.get(i);
                    bufferedWriter.write(str, 0, str.length());
                    bufferedWriter.write("\r\n", 0, 2);
                }
                bufferedWriter.flush();
            } catch (Exception e) {
                HMSLog.m37193i(f7873a, "getManifestBytesbySorted Exception!" + e.getMessage());
            }
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            throw th;
        }
    }

    /* renamed from: a */
    public static byte[] m37130a(ZipFile zipFile) {
        return m37129a(zipFile, "META-INF/MANIFEST.MF");
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x01ac: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:60:0x01a7 */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x01a7: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:60:0x01a7 */
    /* renamed from: a */
    public static byte[] m37129a(ZipFile zipFile, String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        InputStream inputStream;
        BufferedInputStream bufferedInputStream2;
        OutputStream outputStream;
        BufferedOutputStream bufferedOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        Exception e;
        Throwable th2;
        ZipEntry entry = zipFile.getEntry(str);
        OutputStream outputStream2 = null;
        try {
            if (entry == null) {
                return null;
            }
            try {
                inputStream = zipFile.getInputStream(entry);
                if (inputStream == null) {
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) null);
                    IOUtils.closeQuietly((OutputStream) null);
                    IOUtils.closeQuietly((OutputStream) null);
                    return null;
                }
                try {
                    bufferedInputStream = new BufferedInputStream(inputStream);
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = null;
                    byteArrayOutputStream2 = null;
                    bufferedOutputStream = null;
                    String str2 = f7873a;
                    ByteArrayOutputStream byteArrayOutputStream3 = byteArrayOutputStream2;
                    ByteArrayOutputStream byteArrayOutputStream4 = byteArrayOutputStream2;
                    StringBuilder sb = new StringBuilder();
                    ByteArrayOutputStream byteArrayOutputStream5 = byteArrayOutputStream2;
                    sb.append("getManifestBytes Exception!");
                    ByteArrayOutputStream byteArrayOutputStream6 = byteArrayOutputStream2;
                    sb.append(e.getMessage());
                    ByteArrayOutputStream byteArrayOutputStream7 = byteArrayOutputStream2;
                    HMSLog.m37193i(str2, sb.toString());
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                    IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                    return null;
                } catch (Throwable th3) {
                    th2 = th3;
                    th = th2;
                    bufferedInputStream = null;
                    byteArrayOutputStream = null;
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly(outputStream2);
                    throw th;
                }
                try {
                    byte[] bArr = new byte[4096];
                    byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream2);
                        try {
                            for (int read = bufferedInputStream.read(bArr, 0, 4096); read > 0; read = bufferedInputStream.read(bArr, 0, 4096)) {
                                bufferedOutputStream.write(bArr, 0, read);
                            }
                            bufferedOutputStream.flush();
                            byte[] byteArray = byteArrayOutputStream2.toByteArray();
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly((InputStream) bufferedInputStream);
                            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                            IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                            return byteArray;
                        } catch (Exception e3) {
                            e = e3;
                            String str22 = f7873a;
                            ByteArrayOutputStream byteArrayOutputStream32 = byteArrayOutputStream2;
                            ByteArrayOutputStream byteArrayOutputStream42 = byteArrayOutputStream2;
                            StringBuilder sb2 = new StringBuilder();
                            ByteArrayOutputStream byteArrayOutputStream52 = byteArrayOutputStream2;
                            sb2.append("getManifestBytes Exception!");
                            ByteArrayOutputStream byteArrayOutputStream62 = byteArrayOutputStream2;
                            sb2.append(e.getMessage());
                            ByteArrayOutputStream byteArrayOutputStream72 = byteArrayOutputStream2;
                            HMSLog.m37193i(str22, sb2.toString());
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly((InputStream) bufferedInputStream);
                            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                            IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                            return null;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        bufferedOutputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly((InputStream) bufferedInputStream);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                        IOUtils.closeQuietly(outputStream2);
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                    byteArrayOutputStream2 = null;
                    bufferedOutputStream = null;
                    String str222 = f7873a;
                    ByteArrayOutputStream byteArrayOutputStream322 = byteArrayOutputStream2;
                    ByteArrayOutputStream byteArrayOutputStream422 = byteArrayOutputStream2;
                    StringBuilder sb22 = new StringBuilder();
                    ByteArrayOutputStream byteArrayOutputStream522 = byteArrayOutputStream2;
                    sb22.append("getManifestBytes Exception!");
                    ByteArrayOutputStream byteArrayOutputStream622 = byteArrayOutputStream2;
                    sb22.append(e.getMessage());
                    ByteArrayOutputStream byteArrayOutputStream722 = byteArrayOutputStream2;
                    HMSLog.m37193i(str222, sb22.toString());
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                    IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                    return null;
                } catch (Throwable th5) {
                    th = th5;
                    byteArrayOutputStream = null;
                }
            } catch (Exception e6) {
                e = e6;
                inputStream = null;
            } catch (Throwable th6) {
                th2 = th6;
                inputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            bufferedInputStream = bufferedInputStream2;
            inputStream = null;
            outputStream2 = outputStream;
        }
    }

    /* renamed from: b */
    public static void m37124b(byte[] bArr) {
        BufferedReader bufferedReader;
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        Throwable th;
        if (bArr == null) {
            HMSLog.m37195e(f7873a, "manifest is null！");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        f7874b = null;
        f7875c = null;
        f7876d = null;
        try {
            byteArrayInputStream2 = new ByteArrayInputStream(bArr);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream2, StandardCharsets.UTF_8));
            } catch (Exception e) {
                bufferedReader = null;
                byteArrayInputStream = byteArrayInputStream2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception e2) {
            byteArrayInputStream = null;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayInputStream2 = null;
            bufferedReader = null;
        }
        try {
            String m37135a = m37135a(bufferedReader);
            while (m37135a != null) {
                if (m37135a.length() != 0) {
                    if (m37135a.startsWith("ApkHash:")) {
                        f7877e = m37133a(m37135a.substring(m37135a.indexOf(StringConstant.COLON) + 1));
                    }
                    if (m37135a.startsWith(KEY_SIGNATURE)) {
                        f7874b = m37133a(m37135a.substring(m37135a.indexOf(StringConstant.COLON) + 1));
                        m37135a = m37135a(bufferedReader);
                    } else if (m37135a.startsWith(KEY_SIGNATURE2)) {
                        f7875c = m37133a(m37135a.substring(m37135a.indexOf(StringConstant.COLON) + 1));
                        m37135a = m37135a(bufferedReader);
                    } else if (m37135a.startsWith(KEY_SIGNATURE3)) {
                        f7876d = m37133a(m37135a.substring(m37135a.indexOf(StringConstant.COLON) + 1));
                        m37135a = m37135a(bufferedReader);
                    } else {
                        stringBuffer.append(m37135a);
                        stringBuffer.append("\r\n");
                    }
                }
                m37135a = m37135a(bufferedReader);
            }
            f7878f = stringBuffer.toString();
            byteArrayInputStream = byteArrayInputStream2;
        } catch (Exception e3) {
            byteArrayInputStream = byteArrayInputStream2;
            try {
                HMSLog.m37195e(f7873a, "loadApkCert Exception!");
                IOUtils.closeQuietly((InputStream) byteArrayInputStream);
                IOUtils.closeQuietly((Reader) bufferedReader);
            } catch (Throwable th4) {
                byteArrayInputStream2 = byteArrayInputStream;
                th = th4;
                IOUtils.closeQuietly((InputStream) byteArrayInputStream2);
                IOUtils.closeQuietly((Reader) bufferedReader);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            IOUtils.closeQuietly((InputStream) byteArrayInputStream2);
            IOUtils.closeQuietly((Reader) bufferedReader);
            throw th;
        }
        IOUtils.closeQuietly((InputStream) byteArrayInputStream);
        IOUtils.closeQuietly((Reader) bufferedReader);
    }

    /* renamed from: b */
    public static boolean m37126b() {
        try {
            if (m37127a(Base64.decode(EMUI10_PK, 0), m37132a(f7878f, "SHA-256"), m37125b(f7875c), "SHA256withRSA")) {
                HMSLog.m37193i(f7873a, "verifyMDMSignatureV2 verify successful!");
                return true;
            }
            HMSLog.m37193i(f7873a, "verifyMDMSignatureV2 verify failure!");
            return false;
        } catch (Exception e) {
            String str = f7873a;
            StringBuilder m8728C = C22128a.m8728C("verifyMDMSignatureV2 MDM verify Exception!:");
            m8728C.append(e.getMessage());
            HMSLog.m37193i(str, m8728C.toString());
            return false;
        }
    }

    /* renamed from: b */
    public static byte[] m37125b(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        int length = str.length();
        byte[] bArr = new byte[length % 2 == 0 ? length / 2 : (length / 2) + 1];
        for (int i2 = 0; i2 < length; i2 += 2) {
            if (i2 + 1 < length) {
                bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i), 16) + (Character.digit(str.charAt(i2), 16) << 4));
            } else {
                bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i2), 16) << 4);
            }
        }
        return bArr;
    }

    public static String bytesToString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr2[i3] = cArr[i2 >>> 4];
            cArr2[i3 + 1] = cArr[i2 & 15];
        }
        return String.valueOf(cArr2);
    }

    /* renamed from: c */
    public static boolean m37123c() {
        try {
            if (m37127a(Base64.decode(EMUI11_PK, 0), m37132a(f7878f, "SHA-384"), m37125b(f7876d), "SHA384withRSA")) {
                HMSLog.m37193i(f7873a, "verifyMDMSignatureV3 verify successful!");
                return true;
            }
            HMSLog.m37193i(f7873a, "verifyMDMSignatureV3 verify failure!");
            return false;
        } catch (Exception e) {
            String str = f7873a;
            StringBuilder m8728C = C22128a.m8728C("verifyMDMSignatureV3 MDM verify Exception!:");
            m8728C.append(e.getMessage());
            HMSLog.m37193i(str, m8728C.toString());
            return false;
        }
    }

    public static boolean checkSignature() {
        if (f7876d != null) {
            return m37123c();
        }
        if (f7875c != null) {
            return m37126b();
        }
        if (f7874b == null) {
            return false;
        }
        return m37136a();
    }

    public static String getHmsPath(Context context) {
        String str;
        try {
            str = context.getPackageManager().getApplicationInfo("com.huawei.hwid", 128).sourceDir;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e(f7873a, "HMS is not found!");
            str = null;
        }
        return str;
    }

    public static boolean isCertFound(String str) {
        Throwable th;
        boolean z;
        Exception e;
        ZipFile zipFile;
        ZipFile zipFile2;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile2 = new ZipFile(str);
            } catch (Exception e2) {
                e = e2;
                zipFile = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            z = zipFile2.getEntry("META-INF/HUAWEI.CER") != null;
            if (z) {
                m37124b(m37129a(zipFile2, "META-INF/HUAWEI.CER"));
            }
            try {
                zipFile2.close();
            } catch (IOException e3) {
                String str2 = f7873a;
                StringBuilder m8728C = C22128a.m8728C("zipFile.close Exception!");
                m8728C.append(e3.getMessage());
                HMSLog.m37195e(str2, m8728C.toString());
            }
        } catch (Exception e4) {
            zipFile = zipFile2;
            e = e4;
            String str3 = f7873a;
            ZipFile zipFile4 = zipFile;
            ZipFile zipFile5 = zipFile;
            StringBuilder sb = new StringBuilder();
            ZipFile zipFile6 = zipFile;
            sb.append("isCertFound Exception!");
            ZipFile zipFile7 = zipFile;
            sb.append(e.getMessage());
            zipFile3 = zipFile;
            HMSLog.m37195e(str3, sb.toString());
            z = false;
            if (zipFile != null) {
                try {
                    zipFile.close();
                    z = false;
                } catch (IOException e5) {
                    String str4 = f7873a;
                    StringBuilder m8728C2 = C22128a.m8728C("zipFile.close Exception!");
                    m8728C2.append(e5.getMessage());
                    HMSLog.m37195e(str4, m8728C2.toString());
                    z = false;
                }
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
            zipFile3 = zipFile2;
            if (zipFile3 != null) {
                try {
                    zipFile3.close();
                } catch (IOException e6) {
                    String str5 = f7873a;
                    StringBuilder m8728C3 = C22128a.m8728C("zipFile.close Exception!");
                    m8728C3.append(e6.getMessage());
                    HMSLog.m37195e(str5, m8728C3.toString());
                }
            }
            throw th;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.zip.ZipFile] */
    public static boolean verifyApkHash(String str) {
        Throwable th;
        Exception e;
        ZipFile zipFile;
        ZipFile zipFile2;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile2 = new ZipFile(str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            zipFile = null;
        }
        try {
            byte[] m37130a = m37130a(zipFile2);
            ArrayList<String> m37128a = m37128a(m37130a);
            if (m37128a != null) {
                m37130a = m37131a(m37128a);
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(m37130a);
            String bytesToString = bytesToString(messageDigest.digest());
            String str2 = f7877e;
            if (str2 != null) {
                if (str2.equals(bytesToString)) {
                    try {
                        zipFile2.close();
                        return true;
                    } catch (Exception e3) {
                        String str3 = f7873a;
                        StringBuilder m8728C = C22128a.m8728C("close stream Exception!");
                        m8728C.append(e3.getMessage());
                        HMSLog.m37193i(str3, m8728C.toString());
                        return true;
                    }
                }
            }
            try {
                zipFile2.close();
                return false;
            } catch (Exception e4) {
                String str4 = f7873a;
                StringBuilder m8728C2 = C22128a.m8728C("close stream Exception!");
                m8728C2.append(e4.getMessage());
                HMSLog.m37193i(str4, m8728C2.toString());
                return false;
            }
        } catch (Exception e5) {
            zipFile = zipFile2;
            e = e5;
            String str5 = f7873a;
            ZipFile zipFile4 = zipFile;
            ZipFile zipFile5 = zipFile;
            StringBuilder sb = new StringBuilder();
            ZipFile zipFile6 = zipFile;
            sb.append("verifyApkHash Exception!");
            ZipFile zipFile7 = zipFile;
            sb.append(e.getMessage());
            ZipFile zipFile8 = zipFile;
            HMSLog.m37193i(str5, sb.toString());
            if (zipFile == null) {
                return false;
            }
            try {
                zipFile.close();
                return false;
            } catch (Exception e6) {
                zipFile3 = f7873a;
                StringBuilder m8728C3 = C22128a.m8728C("close stream Exception!");
                m8728C3.append(e6.getMessage());
                HMSLog.m37193i(zipFile3, m8728C3.toString());
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
            zipFile3 = zipFile2;
            if (zipFile3 != null) {
                try {
                    zipFile3.close();
                } catch (Exception e7) {
                    String str6 = f7873a;
                    StringBuilder m8728C4 = C22128a.m8728C("close stream Exception!");
                    m8728C4.append(e7.getMessage());
                    HMSLog.m37193i(str6, m8728C4.toString());
                }
            }
            throw th;
        }
    }
}
