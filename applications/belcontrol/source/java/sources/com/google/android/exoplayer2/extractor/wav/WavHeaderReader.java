package com.google.android.exoplayer2.extractor.wav;

import android.util.Log;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/wav/WavHeaderReader.class */
public final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";
    private static final int TYPE_FLOAT = 3;
    private static final int TYPE_PCM = 1;
    private static final int TYPE_WAVE_FORMAT_EXTENSIBLE = 65534;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader.class */
    public static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;

        /* renamed from: id */
        public final int f3602id;
        public final long size;

        private ChunkHeader(int i, long j) {
            this.f3602id = i;
            this.size = j;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    private WavHeaderReader() {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.extractor.wav.WavHeader peek(com.google.android.exoplayer2.extractor.ExtractorInput r9) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.wav.WavHeaderReader.peek(com.google.android.exoplayer2.extractor.ExtractorInput):com.google.android.exoplayer2.extractor.wav.WavHeader");
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static void skipToData(ExtractorInput extractorInput, WavHeader wavHeader) {
        Assertions.checkNotNull(extractorInput);
        Assertions.checkNotNull(wavHeader);
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        while (true) {
            ChunkHeader peek = ChunkHeader.peek(extractorInput, parsableByteArray);
            if (peek.f3602id == Util.getIntegerCodeForString("data")) {
                extractorInput.skipFully(8);
                wavHeader.setDataBounds(extractorInput.getPosition(), peek.size);
                return;
            }
            Log.w(TAG, "Ignoring unknown WAV chunk: " + peek.f3602id);
            char c = peek.size + 8;
            if (peek.f3602id == Util.getIntegerCodeForString("RIFF")) {
                c = '\f';
            }
            if (c > 2147483647L) {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + peek.f3602id);
            }
            extractorInput.skipFully(c);
        }
    }
}
