package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/m.class */
final class m extends j {

    /* renamed from: d  reason: collision with root package name */
    private static final int f20777d = Float.floatToIntBits(Float.NaN);

    private static void a(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f20777d) {
            i2 = Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f20770b.f20695d;
        if (i2 == 536870912) {
            ByteBuffer a2 = a((i / 3) * 4);
            while (true) {
                byteBuffer2 = a2;
                if (position >= limit) {
                    break;
                }
                a(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), a2);
                position += 3;
            }
        } else if (i2 == 805306368) {
            ByteBuffer a3 = a(i);
            while (true) {
                byteBuffer2 = a3;
                if (position >= limit) {
                    break;
                }
                a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a3);
                position += 4;
            }
        } else {
            throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.flip();
    }

    @Override // com.google.android.exoplayer2.audio.j
    public final AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i = aVar.f20695d;
        if (af.d(i)) {
            return i != 4 ? new AudioProcessor.a(aVar.f20693b, aVar.f20694c, 4) : AudioProcessor.a.f20692a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
