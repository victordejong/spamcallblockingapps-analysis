package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.h;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferEncoder.class */
public class ByteBufferEncoder implements d<ByteBuffer> {
    private static final String TAG = "ByteBufferEncoder";

    public boolean encode(ByteBuffer byteBuffer, File file, h hVar) {
        boolean z;
        try {
            a.a(byteBuffer, file);
            z = true;
        } catch (IOException e) {
            Log.isLoggable(TAG, 3);
            z = false;
        }
        return z;
    }
}
