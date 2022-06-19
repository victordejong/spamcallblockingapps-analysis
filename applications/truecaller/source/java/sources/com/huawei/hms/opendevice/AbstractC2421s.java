package com.huawei.hms.opendevice;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import com.huawei.secure.android.common.util.IOUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
/* renamed from: com.huawei.hms.opendevice.s */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/s.class */
public abstract class AbstractC2421s {
    /* renamed from: a */
    public static String m37385a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int read = inputStream.read();
        while (true) {
            int i = read;
            if (-1 == i) {
                String byteArrayOutputStream2 = byteArrayOutputStream.toString(StringConstant.UTF8);
                m37387a((Closeable) inputStream);
                IOUtil.closeSecure((OutputStream) byteArrayOutputStream);
                return byteArrayOutputStream2;
            }
            byteArrayOutputStream.write(i);
            read = inputStream.read();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Reader] */
    /* renamed from: a */
    public static String m37384a(String str) {
        Throwable th;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader2;
        File file = new File(str);
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                inputStreamReader2 = new InputStreamReader(new FileInputStream(file), StringConstant.UTF8);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader2);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        } catch (FileNotFoundException e) {
                            HMSLog.m37195e("StreamUtil", "file not exist.");
                            IOUtils.closeQuietly((Reader) inputStreamReader2);
                            IOUtils.closeQuietly((Reader) bufferedReader);
                            return sb.toString();
                        } catch (IOException e2) {
                            HMSLog.m37195e("StreamUtil", "read value IOException.");
                            IOUtils.closeQuietly((Reader) inputStreamReader2);
                            IOUtils.closeQuietly((Reader) bufferedReader);
                            return sb.toString();
                        } catch (Throwable th2) {
                            bufferedReader2 = bufferedReader;
                            th = th2;
                            inputStreamReader = inputStreamReader2;
                            IOUtils.closeQuietly((Reader) inputStreamReader);
                            IOUtils.closeQuietly((Reader) bufferedReader2);
                            throw th;
                        }
                    }
                    IOUtils.closeQuietly((Reader) inputStreamReader2);
                    IOUtils.closeQuietly((Reader) bufferedReader);
                } catch (FileNotFoundException e3) {
                    bufferedReader = null;
                } catch (IOException e4) {
                    bufferedReader = null;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = file;
            }
        } catch (FileNotFoundException e5) {
            inputStreamReader2 = null;
            bufferedReader = null;
        } catch (IOException e6) {
            inputStreamReader2 = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m37387a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                HMSLog.m37192w("StreamUtil", "close IOException");
            }
        }
    }

    /* renamed from: a */
    public static void m37386a(File file) throws IOException {
        if (file.exists()) {
            return;
        }
        if (file.getParentFile() == null) {
            HMSLog.m37195e("StreamUtil", "parent file is null.");
            throw new IOException("parent file is null");
        } else if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
            HMSLog.m37195e("StreamUtil", "make parent dirs failed.");
            throw new IOException("make parent dirs failed");
        } else if (file.createNewFile()) {
        } else {
            HMSLog.m37195e("StreamUtil", "create file failed.");
            throw new IOException("create file failed");
        }
    }

    /* renamed from: a */
    public static void m37383a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                HMSLog.m37192w("StreamUtil", "close HttpURLConnection Exception");
            }
        }
    }
}
