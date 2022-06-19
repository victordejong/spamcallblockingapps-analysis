package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
/* renamed from: com.google.android.exoplayer2.audio.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/q.class */
final class C10910q extends AbstractC10900j {
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0156 A[LOOP:4: B:41:0x0156->B:43:0x015c, LOOP_START, PHI: r11 
      PHI: (r11v3 int) = (r11v2 int), (r11v4 int) binds: [B:18:0x007b, B:43:0x015c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21964a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10910q.mo21964a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: b */
    public final AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        int i = c10870a.f35035d;
        if (i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4) {
            return i != 2 ? new AudioProcessor.C10870a(c10870a.f35033b, c10870a.f35034c, 2) : AudioProcessor.C10870a.f35032a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
    }
}
