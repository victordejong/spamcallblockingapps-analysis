package com.google.android.exoplayer2.mediacodec;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/i.class */
public final class i {
    private i() {
    }

    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-".concat(String.valueOf(i)), ByteBuffer.wrap(list.get(i)));
        }
    }
}
