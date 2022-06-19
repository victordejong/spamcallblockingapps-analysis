package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
/* renamed from: androidx.media2.exoplayer.external.audio.v */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/v.class */
final class C1430v extends AbstractC1423q {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7 A[LOOP:2: B:27:0x00c7->B:29:0x00cd, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:14:0x005f, B:29:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42943a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.C1430v.mo42943a(java.nio.ByteBuffer):void");
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        return (this.f5378d == 0 || this.f5378d == 2) ? false : true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            return m42980b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public final int mo42950c() {
        return 2;
    }
}
