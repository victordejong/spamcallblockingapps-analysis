package com.linkedin.android.litr.f;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/f/b.class */
public final class b implements a {
    @Override // com.linkedin.android.litr.f.a
    public /* synthetic */ int a(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("sample-rate");
        return integer;
    }

    @Override // com.linkedin.android.litr.f.a
    public final void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        int a2 = a(mediaFormat);
        int a3 = a(mediaFormat2);
        int b2 = b(mediaFormat2);
        if (a2 < a3) {
            throw new IllegalArgumentException("Illegal use of DownsampleAudioResampler");
        } else if (b2 == 1 || b2 == 2) {
            int remaining = byteBuffer.remaining() / b2;
            int ceil = (int) Math.ceil(remaining * (a3 / a2));
            int i = remaining - ceil;
            float f = ceil;
            float f2 = f / f;
            float f3 = i;
            float f4 = f3 / f3;
            while (true) {
                if (ceil > 0 || i > 0) {
                    if (f2 >= f4) {
                        for (int i2 = 0; i2 < b2; i2++) {
                            byteBuffer2.put(byteBuffer.get());
                        }
                        ceil--;
                        f2 = ceil / f;
                    } else {
                        for (int i3 = 0; i3 < b2; i3++) {
                            byteBuffer.position(byteBuffer.position() + 1);
                        }
                        i--;
                        f4 = i / f3;
                    }
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Illegal use of DownsampleAudioResampler. Channels:".concat(String.valueOf(b2)));
        }
    }

    @Override // com.linkedin.android.litr.f.a
    public /* synthetic */ int b(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("channel-count");
        return integer;
    }
}
