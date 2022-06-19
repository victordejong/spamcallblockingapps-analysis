package com.linkedin.android.litr.p468f;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* renamed from: com.linkedin.android.litr.f.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/f/b.class */
public final class C16648b implements AbstractC16647a {
    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: a */
    public /* synthetic */ int mo6826a(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("sample-rate");
        return integer;
    }

    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: a */
    public final void mo6825a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        int mo6826a = mo6826a(mediaFormat);
        int mo6826a2 = mo6826a(mediaFormat2);
        int mo6824b = mo6824b(mediaFormat2);
        if (mo6826a >= mo6826a2) {
            if (mo6824b != 1 && mo6824b != 2) {
                throw new IllegalArgumentException("Illegal use of DownsampleAudioResampler. Channels:".concat(String.valueOf(mo6824b)));
            }
            int remaining = byteBuffer.remaining() / mo6824b;
            int ceil = (int) Math.ceil(remaining * (mo6826a2 / mo6826a));
            int i = remaining - ceil;
            float f = ceil;
            float f2 = f / f;
            float f3 = i;
            float f4 = f3 / f3;
            while (true) {
                if (ceil <= 0 && i <= 0) {
                    return;
                }
                if (f2 >= f4) {
                    for (int i2 = 0; i2 < mo6824b; i2++) {
                        byteBuffer2.put(byteBuffer.get());
                    }
                    ceil--;
                    f2 = ceil / f;
                } else {
                    for (int i3 = 0; i3 < mo6824b; i3++) {
                        byteBuffer.position(byteBuffer.position() + 1);
                    }
                    i--;
                    f4 = i / f3;
                }
            }
        } else {
            throw new IllegalArgumentException("Illegal use of DownsampleAudioResampler");
        }
    }

    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: b */
    public /* synthetic */ int mo6824b(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("channel-count");
        return integer;
    }
}
