package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.ac;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/t.class */
final class t extends q {
    private static final int e = Float.floatToIntBits(Float.NaN);

    private static void a(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == e) {
            i2 = Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED);
        }
        byteBuffer.putInt(i2);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        boolean z = this.f2918d == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer a2 = a(i);
        if (z) {
            while (position < limit) {
                a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a2);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                a(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), a2);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        a2.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a() {
        return ac.d(this.f2918d);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (ac.d(i3)) {
            return b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int c() {
        return 4;
    }
}
