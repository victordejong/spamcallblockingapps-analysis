package com.bumptech.glide.load.p081b;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.p077h.C1434a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.b.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c.class */
public class C1515c implements AbstractC1664d<ByteBuffer> {
    /* renamed from: a */
    public boolean mo16612a(ByteBuffer byteBuffer, File file, C1781h c1781h) {
        boolean z;
        try {
            C1434a.m17033a(byteBuffer, file);
            z = true;
        } catch (IOException e) {
            z = false;
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e);
                z = false;
            }
        }
        return z;
    }
}
