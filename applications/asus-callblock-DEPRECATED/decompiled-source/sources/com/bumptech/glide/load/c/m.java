package com.bumptech.glide.load.c;

import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.i.a;
import com.bumptech.glide.load.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/m.class */
public final class m implements b<InputStream> {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    private static boolean a2(InputStream inputStream, OutputStream outputStream) {
        boolean z = false;
        byte[] b2 = a.a().b();
        while (true) {
            try {
                try {
                    int read = inputStream.read(b2);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(b2, 0, read);
                } catch (IOException e) {
                    if (Log.isLoggable("StreamEncoder", 3)) {
                        Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                    }
                    a.a().a(b2);
                }
            } catch (Throwable th) {
                a.a().a(b2);
                throw th;
            }
        }
        a.a().a(b2);
        z = true;
        return z;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // com.bumptech.glide.load.b
    public final /* bridge */ /* synthetic */ boolean a(InputStream inputStream, OutputStream outputStream) {
        return a2(inputStream, outputStream);
    }
}
