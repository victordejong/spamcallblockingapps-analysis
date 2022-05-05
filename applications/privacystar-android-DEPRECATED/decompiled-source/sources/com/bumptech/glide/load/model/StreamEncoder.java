package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StreamEncoder.class */
public class StreamEncoder implements Encoder<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final ArrayPool byteArrayPool;

    public StreamEncoder(ArrayPool arrayPool) {
        this.byteArrayPool = arrayPool;
    }

    public boolean encode(@NonNull InputStream inputStream, @NonNull File file, @NonNull Options options) {
        boolean z;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        } catch (IOException e2) {
                            e = e2;
                            fileOutputStream2 = fileOutputStream;
                            if (Log.isLoggable(TAG, 3)) {
                                fileOutputStream3 = fileOutputStream2;
                                Log.d(TAG, "Failed to encode data onto the OutputStream", e);
                            }
                            z = false;
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                                z = false;
                            }
                            this.byteArrayPool.put(bArr);
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream3 = fileOutputStream;
                            if (fileOutputStream3 != null) {
                                try {
                                    fileOutputStream3.close();
                                } catch (IOException e3) {
                                }
                            }
                            this.byteArrayPool.put(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    z = true;
                } catch (IOException e4) {
                }
            } catch (IOException e5) {
                e = e5;
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
                z = true;
            }
            this.byteArrayPool.put(bArr);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
