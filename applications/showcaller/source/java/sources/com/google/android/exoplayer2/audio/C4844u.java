package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
/* renamed from: com.google.android.exoplayer2.audio.u */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/u.class */
final class C4844u extends AbstractC4837p {
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108 A[LOOP:3: B:34:0x0108->B:36:0x010e, LOOP_START, PHI: r11 
      PHI: (r11v3 int) = (r11v2 int), (r11v4 int) binds: [B:16:0x006f, B:36:0x010e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo21447d(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C4844u.mo21447d(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: i */
    public AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a) {
        int i = c4804a.f14512d;
        if (i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368) {
            return i != 2 ? new AudioProcessor.C4804a(c4804a.f14510b, c4804a.f14511c, 2) : AudioProcessor.C4804a.f14509a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
    }
}
