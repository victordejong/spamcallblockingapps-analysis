package p193e.p1451f.p1452a.p1457n.p1464p;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.AbstractC22261d;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
/* renamed from: e.f.a.n.p.t */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/t.class */
public class C22453t implements AbstractC22261d<InputStream> {

    /* renamed from: a */
    public final AbstractC22301b f62314a;

    public C22453t(AbstractC22301b abstractC22301b) {
        this.f62314a = abstractC22301b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22261d
    /* renamed from: a */
    public boolean mo8221a(InputStream inputStream, File file, C22267i c22267i) {
        boolean z;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        InputStream inputStream2 = inputStream;
        byte[] bArr = (byte[]) this.f62314a.mo8337c(65536, byte[].class);
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                try {
                    fileOutputStream2 = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream2.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        } catch (IOException e) {
                            fileOutputStream = fileOutputStream2;
                            fileOutputStream3 = fileOutputStream;
                            Log.isLoggable("StreamEncoder", 3);
                            z = false;
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                                z = false;
                            }
                            this.f62314a.put(bArr);
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e2) {
                                }
                            }
                            this.f62314a.put(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream2.close();
                    fileOutputStream2.close();
                    z = true;
                } catch (IOException e3) {
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                fileOutputStream2 = fileOutputStream3;
                th = th3;
            }
        } catch (IOException e4) {
        }
        this.f62314a.put(bArr);
        return z;
    }
}
