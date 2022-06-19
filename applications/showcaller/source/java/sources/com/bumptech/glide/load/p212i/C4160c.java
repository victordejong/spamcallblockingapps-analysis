package com.bumptech.glide.load.p212i;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.p223p.C4368a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.i.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/c.class */
public class C4160c implements AbstractC3990a<ByteBuffer> {
    /* renamed from: c */
    public boolean mo22950a(ByteBuffer byteBuffer, File file, C4032e c4032e) {
        boolean z;
        try {
            C4368a.m22749e(byteBuffer, file);
            z = true;
        } catch (IOException e) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e);
            }
            z = false;
        }
        return z;
    }
}
