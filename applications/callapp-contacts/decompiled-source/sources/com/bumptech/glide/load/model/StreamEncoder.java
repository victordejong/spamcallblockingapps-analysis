package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StreamEncoder.class */
public class StreamEncoder implements d<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final b byteArrayPool;

    public StreamEncoder(b bVar) {
        this.byteArrayPool = bVar;
    }

    public boolean encode(InputStream inputStream, File file, h hVar) {
        boolean z;
        Throwable th;
        byte[] bArr = (byte[]) this.byteArrayPool.a(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
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
                            this.byteArrayPool.a((b) bArr);
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
                            this.byteArrayPool.a((b) bArr);
                            throw th;
                        }
                    }
                    fileOutputStream3.close();
                    z = true;
                    fileOutputStream3.close();
                } catch (IOException e3) {
                }
            } catch (IOException e4) {
            }
            this.byteArrayPool.a((b) bArr);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
