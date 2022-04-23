package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/q.class */
final class q extends j {
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0156 A[LOOP:4: B:41:0x0156->B:43:0x015c, LOOP_START, PHI: r11 
      PHI: (r11v3 int) = (r11v2 int), (r11v4 int) binds: [B:18:0x007b, B:43:0x015c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.q.a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.exoplayer2.audio.j
    public final AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i = aVar.f20695d;
        if (i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4) {
            return i != 2 ? new AudioProcessor.a(aVar.f20693b, aVar.f20694c, 2) : AudioProcessor.a.f20692a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
