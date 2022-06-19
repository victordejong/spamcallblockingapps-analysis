package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/m.class */
final class C10903m extends AbstractC10900j {

    /* renamed from: d */
    private static final int f35210d = Float.floatToIntBits(Float.NaN);

    /* renamed from: a */
    private static void m22009a(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f35210d) {
            i2 = Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21964a(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f35198b.f35035d;
        if (i2 == 536870912) {
            ByteBuffer a = m22016a((i / 3) * 4);
            while (true) {
                byteBuffer2 = a;
                if (position >= limit) {
                    break;
                }
                m22009a(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), a);
                position += 3;
            }
        } else if (i2 != 805306368) {
            throw new IllegalStateException();
        } else {
            ByteBuffer a2 = m22016a(i);
            while (true) {
                byteBuffer2 = a2;
                if (position >= limit) {
                    break;
                }
                m22009a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a2);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: b */
    public final AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        int i = c10870a.f35035d;
        if (C11599af.m19929d(i)) {
            return i != 4 ? new AudioProcessor.C10870a(c10870a.f35033b, c10870a.f35034c, 4) : AudioProcessor.C10870a.f35032a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
    }
}
