package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.DvbSubtitleReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader.class */
public final class DvbSubtitleReader implements ElementaryStreamReader {
    public int bytesToCheck;
    public final TrackOutput[] outputs;
    public int sampleBytesWritten;
    public long sampleTimeUs;
    public final List<TsPayloadReader.DvbSubtitleInfo> subtitleInfos;
    public boolean writingSample;

    public DvbSubtitleReader(List<TsPayloadReader.DvbSubtitleInfo> list) {
        this.subtitleInfos = list;
        this.outputs = new TrackOutput[list.size()];
    }

    private boolean checkNextByte(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.bytesLeft() == 0) {
            return false;
        }
        if (parsableByteArray.readUnsignedByte() != i) {
            this.writingSample = false;
        }
        this.bytesToCheck--;
        return this.writingSample;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        TrackOutput[] trackOutputArr;
        if (!this.writingSample) {
            return;
        }
        if (this.bytesToCheck != 2 || checkNextByte(parsableByteArray, 32)) {
            if (this.bytesToCheck != 1 || checkNextByte(parsableByteArray, 0)) {
                int position = parsableByteArray.getPosition();
                int bytesLeft = parsableByteArray.bytesLeft();
                for (TrackOutput trackOutput : this.outputs) {
                    parsableByteArray.setPosition(position);
                    trackOutput.sampleData(parsableByteArray, bytesLeft);
                }
                this.sampleBytesWritten += bytesLeft;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            TsPayloadReader.DvbSubtitleInfo dvbSubtitleInfo = this.subtitleInfos.get(i);
            trackIdGenerator.generateNewId();
            TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 3);
            track.format(Format.createImageSampleFormat(trackIdGenerator.getFormatId(), MimeTypes.APPLICATION_DVBSUBS, null, -1, 0, Collections.singletonList(dvbSubtitleInfo.initializationData), dvbSubtitleInfo.language, null));
            this.outputs[i] = track;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
        if (this.writingSample) {
            for (TrackOutput trackOutput : this.outputs) {
                trackOutput.sampleMetadata(this.sampleTimeUs, 1, this.sampleBytesWritten, 0, null);
            }
            this.writingSample = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if ((i & 4) != 0) {
            this.writingSample = true;
            this.sampleTimeUs = j;
            this.sampleBytesWritten = 0;
            this.bytesToCheck = 2;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.writingSample = false;
    }
}
