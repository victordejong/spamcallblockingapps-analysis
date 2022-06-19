package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.C1996ac;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.t */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/t.class */
final class C1426t extends AbstractC1423q {

    /* renamed from: e */
    private static final int f5388e = Float.floatToIntBits(Float.NaN);

    /* renamed from: a */
    private static void m42973a(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f5388e) {
            i2 = Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED);
        }
        byteBuffer.putInt(i2);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo42943a(ByteBuffer byteBuffer) {
        boolean z = this.f5378d == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer a = m42981a(i);
        if (z) {
            while (position < limit) {
                m42973a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                m42973a(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), a);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        a.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        return C1996ac.m41622d(this.f5378d);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (C1996ac.m41622d(i3)) {
            return m42980b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public final int mo42950c() {
        return 4;
    }
}
