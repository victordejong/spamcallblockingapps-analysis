package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder$FramePredicate;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/Id3Peeker.class */
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    public Metadata peekId3Data(ExtractorInput extractorInput, Id3Decoder$FramePredicate id3Decoder$FramePredicate) {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                extractorInput.peekFully(this.scratch.data, 0, 10);
                this.scratch.setPosition(0);
                if (this.scratch.readUnsignedInt24() != Id3Decoder.ID3_TAG) {
                    break;
                }
                this.scratch.skipBytes(3);
                int readSynchSafeInt = this.scratch.readSynchSafeInt();
                int i3 = readSynchSafeInt + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.scratch.data, 0, bArr, 0, 10);
                    extractorInput.peekFully(bArr, 10, readSynchSafeInt);
                    metadata = new Id3Decoder(id3Decoder$FramePredicate).decode(bArr, i3);
                } else {
                    extractorInput.advancePeekPosition(readSynchSafeInt);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        return metadata;
    }
}
