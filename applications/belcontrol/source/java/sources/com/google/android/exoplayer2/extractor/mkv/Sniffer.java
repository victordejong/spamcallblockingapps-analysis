package com.google.android.exoplayer2.extractor.mkv;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mkv/Sniffer.class */
public final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    private long readUint(ExtractorInput extractorInput) {
        extractorInput.peekFully(this.scratch.data, 0, 1);
        int i = this.scratch.data[0] & 255;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = i & (i2 ^ (-1));
        extractorInput.peekFully(this.scratch.data, 1, i3);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            int i7 = i6;
            if (i5 >= i3) {
                this.peekLength += i3 + 1;
                return i7;
            }
            i5++;
            i6 = (this.scratch.data[i5] & 255) + (i7 << 8);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    public boolean sniff(ExtractorInput extractorInput) {
        long readUint;
        int i;
        ?? length = extractorInput.getLength();
        int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = length > PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID ? (char) 1024 : length;
        }
        int i3 = c;
        extractorInput.peekFully(this.scratch.data, 0, 4);
        char readUnsignedInt = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (readUnsignedInt != 440786851) {
            int i4 = this.peekLength + 1;
            this.peekLength = i4;
            if (i4 == i3) {
                return false;
            }
            extractorInput.peekFully(this.scratch.data, 0, 1);
            readUnsignedInt = ((readUnsignedInt << '\b') & (-256)) | (this.scratch.data[0] & 255);
        }
        long readUint2 = readUint(extractorInput);
        long j = this.peekLength;
        boolean z = false;
        if (readUint2 != Long.MIN_VALUE) {
            if (i2 == 0 || j + readUint2 < length) {
                while (true) {
                    int i5 = this.peekLength;
                    long j2 = i5;
                    long j3 = j + readUint2;
                    if (j2 >= j3) {
                        z = false;
                        if (i5 == j3) {
                            z = true;
                        }
                    } else if (readUint(extractorInput) == Long.MIN_VALUE || (readUint = readUint(extractorInput)) < 0 || readUint > 2147483647L) {
                        return false;
                    } else {
                        if (i != 0) {
                            int i6 = (int) readUint;
                            extractorInput.advancePeekPosition(i6);
                            this.peekLength += i6;
                        }
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }
}
