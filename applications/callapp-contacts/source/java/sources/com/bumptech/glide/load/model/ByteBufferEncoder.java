package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3661d;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.p116g.C3618a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferEncoder.class */
public class ByteBufferEncoder implements AbstractC3661d<ByteBuffer> {
    private static final String TAG = "ByteBufferEncoder";

    public boolean encode(ByteBuffer byteBuffer, File file, C3822h c3822h) {
        boolean z;
        try {
            C3618a.m37612a(byteBuffer, file);
            z = true;
        } catch (IOException e) {
            Log.isLoggable(TAG, 3);
            z = false;
        }
        return z;
    }
}
