package com.huawei.hms.hatool;

import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.zip.Deflater;
/* renamed from: com.huawei.hms.hatool.t0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/t0.class */
public final class C2388t0 {
    /* renamed from: a */
    public static String m37528a(File file) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        FileInputStream fileInputStream3;
        FileInputStream fileInputStream4 = null;
        try {
            try {
                fileInputStream3 = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e) {
            fileInputStream2 = null;
        } catch (IOException e2) {
            fileInputStream = null;
        }
        try {
            C2382p0 c2382p0 = new C2382p0(1024);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream3.read(bArr);
                if (read == -1) {
                    break;
                }
                c2382p0.m37547a(bArr, read);
            }
            if (c2382p0.m37546b() == 0) {
                m37529a((Closeable) fileInputStream3);
                return "";
            }
            String str = new String(c2382p0.m37548a(), StringConstant.UTF8);
            m37529a((Closeable) fileInputStream3);
            return str;
        } catch (FileNotFoundException e3) {
            fileInputStream2 = fileInputStream3;
            C2398y.m37469f("hmsSdk", "getInfoFromFile(): No files need to be read");
            m37529a((Closeable) fileInputStream2);
            return "";
        } catch (IOException e4) {
            fileInputStream = fileInputStream3;
            C2398y.m37469f("hmsSdk", "getInfoFromFile(): stream.read or new string exception");
            m37529a((Closeable) fileInputStream);
            return "";
        } catch (Throwable th3) {
            th = th3;
            fileInputStream4 = fileInputStream3;
            m37529a((Closeable) fileInputStream4);
            throw th;
        }
    }

    /* renamed from: a */
    public static String m37526a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return byteArrayOutputStream.toString(StringConstant.UTF8);
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            m37529a((Closeable) byteArrayOutputStream);
        }
    }

    /* renamed from: a */
    public static void m37529a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C2398y.m37469f("hmsSdk", "closeQuietly(): Exception when closing the closeable!");
            }
        }
    }

    /* renamed from: a */
    public static void m37527a(File file, String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        String str2;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                fileOutputStream3 = null;
                fileOutputStream2 = new FileOutputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e) {
            fileOutputStream = null;
        } catch (IOException e2) {
            fileOutputStream = null;
        }
        try {
            fileOutputStream2.write(str.getBytes(StringConstant.UTF8));
            fileOutputStream2.flush();
        } catch (FileNotFoundException e3) {
            fileOutputStream = fileOutputStream2;
            str2 = "saveInfoToFile(): No files need to be read";
            fileOutputStream3 = fileOutputStream;
            C2398y.m37469f("hmsSdk", str2);
            fileOutputStream2 = fileOutputStream;
            m37529a((Closeable) fileOutputStream2);
        } catch (IOException e4) {
            fileOutputStream = fileOutputStream2;
            str2 = "saveInfoToFile(): io exc from write info to file!";
            fileOutputStream3 = fileOutputStream;
            C2398y.m37469f("hmsSdk", str2);
            fileOutputStream2 = fileOutputStream;
            m37529a((Closeable) fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            m37529a((Closeable) fileOutputStream3);
            throw th;
        }
        m37529a((Closeable) fileOutputStream2);
    }

    /* renamed from: a */
    public static void m37525a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                C2398y.m37469f("hmsSdk", "closeStream(): Exception: close OutputStream error!");
            }
        }
    }

    /* renamed from: a */
    public static void m37524a(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (Exception e) {
            C2398y.m37469f("hmsSdk", "closeQuietly(): Exception when connHttp.getInputStream()!,There may be no network, or no INTERNET permission");
        }
        httpURLConnection.disconnect();
        C2398y.m37479a("hmsSdk", " connHttp disconnect");
    }

    /* renamed from: a */
    public static byte[] m37523a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[1024];
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        deflater.end();
        m37525a((OutputStream) byteArrayOutputStream);
        return byteArray;
    }
}
