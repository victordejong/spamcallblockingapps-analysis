package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3661d;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StreamEncoder.class */
public class StreamEncoder implements AbstractC3661d<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final AbstractC3707b byteArrayPool;

    public StreamEncoder(AbstractC3707b abstractC3707b) {
        this.byteArrayPool = abstractC3707b;
    }

    public boolean encode(InputStream inputStream, File file, C3822h c3822h) {
        boolean z;
        FileOutputStream fileOutputStream;
        Throwable th;
        byte[] bArr = (byte[]) this.byteArrayPool.mo37474a(65536, byte[].class);
        FileOutputStream fileOutputStream2 = null;
        try {
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
                        } catch (IOException e) {
                            fileOutputStream = fileOutputStream3;
                            fileOutputStream2 = fileOutputStream;
                            Log.isLoggable(TAG, 3);
                            z = false;
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                                z = false;
                            }
                            this.byteArrayPool.mo37470a((AbstractC3707b) bArr);
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream2 = fileOutputStream3;
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e2) {
                                }
                            }
                            this.byteArrayPool.mo37470a((AbstractC3707b) bArr);
                            throw th;
                        }
                    }
                    fileOutputStream3.close();
                    fileOutputStream3.close();
                    z = true;
                } catch (IOException e3) {
                }
            } catch (IOException e4) {
                fileOutputStream = null;
            }
            this.byteArrayPool.mo37470a((AbstractC3707b) bArr);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
