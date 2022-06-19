package com.bumptech.glide.load.p212i;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/t.class */
public class C4208t implements AbstractC3990a<InputStream> {

    /* renamed from: a */
    private final AbstractC4091b f13090a;

    public C4208t(AbstractC4091b abstractC4091b) {
        this.f13090a = abstractC4091b;
    }

    /* renamed from: c */
    public boolean mo22950a(InputStream inputStream, File file, C4032e c4032e) {
        boolean z;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        byte[] bArr = (byte[]) this.f13090a.mo23275e(65536, byte[].class);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream3.write(bArr, 0, read);
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream3;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            fileOutputStream2 = fileOutputStream;
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        z = false;
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                            z = false;
                        }
                        this.f13090a.mo23276d(bArr);
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream2 = fileOutputStream3;
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e3) {
                            }
                        }
                        this.f13090a.mo23276d(bArr);
                        throw th;
                    }
                }
                fileOutputStream3.close();
                fileOutputStream3.close();
                z = true;
            } catch (IOException e4) {
                e = e4;
                fileOutputStream = null;
            }
            this.f13090a.mo23276d(bArr);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
