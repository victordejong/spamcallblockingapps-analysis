package p081h.p160h.p179e.p180a.p190p;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import p060e.p061a.p063b.C4226b;
/* renamed from: h.h.e.a.p.k */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/k.class */
public class C6440k {
    /* renamed from: a */
    public static boolean m22566a(String str, String str2) throws Exception {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        try {
            File file = new File(str);
            File file2 = new File(str2);
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[5];
                    if (bufferedInputStream.read(bArr, 0, 5) == 5) {
                        C4226b bVar = new C4226b();
                        if (bVar.m29264a(bArr)) {
                            long j = 0;
                            for (int i = 0; i < 8; i++) {
                                int read = bufferedInputStream.read();
                                if (read >= 0) {
                                    j |= read << (i * 8);
                                } else {
                                    throw new Exception("Can't read stream size");
                                }
                            }
                            if (bVar.m29265a(bufferedInputStream, bufferedOutputStream, j)) {
                                bufferedOutputStream.flush();
                                bufferedOutputStream.close();
                                bufferedInputStream.close();
                                return true;
                            }
                            throw new Exception("Error in data stream");
                        }
                        throw new Exception("Incorrect stream properties");
                    }
                    throw new Exception("input .lzma file is too short");
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        C6432e.m22606a(str2);
                        C6432e.m22605a("lzma_unzip_error", th.getMessage());
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                        }
                        if (bufferedInputStream == null) {
                            return false;
                        }
                        bufferedInputStream.close();
                        return false;
                    } catch (Throwable th3) {
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedOutputStream = null;
            bufferedInputStream = null;
        }
    }
}
