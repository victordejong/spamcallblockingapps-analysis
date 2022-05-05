package androidx.media2.exoplayer.external.text.webvtt;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCue;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Collections;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder.class */
public final class Mp4WebvttDecoder extends SimpleSubtitleDecoder {
    public static final int BOX_HEADER_SIZE = 8;
    public static final int TYPE_payl = 1885436268;
    public static final int TYPE_sttg = 1937011815;
    public static final int TYPE_vttc = 1987343459;
    public final ParsableByteArray sampleData = new ParsableByteArray();
    public final WebvttCue.Builder builder = new WebvttCue.Builder();

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
    }

    public static Cue parseVttCueBox(ParsableByteArray parsableByteArray, WebvttCue.Builder builder, int i) throws SubtitleDecoderException {
        builder.reset();
        while (i > 0) {
            if (i >= 8) {
                int readInt = parsableByteArray.readInt();
                int readInt2 = parsableByteArray.readInt();
                int i2 = readInt - 8;
                String fromUtf8Bytes = Util.fromUtf8Bytes(parsableByteArray.data, parsableByteArray.getPosition(), i2);
                parsableByteArray.skipBytes(i2);
                int i3 = (i - 8) - i2;
                if (readInt2 == 1937011815) {
                    WebvttCueParser.parseCueSettingsList(fromUtf8Bytes, builder);
                    i = i3;
                } else {
                    i = i3;
                    if (readInt2 == 1885436268) {
                        WebvttCueParser.parseCueText(null, fromUtf8Bytes.trim(), builder, Collections.emptyList());
                        i = i3;
                    }
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        return builder.build();
    }

    @Override // androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder
    public Mp4WebvttSubtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.sampleData.reset(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.bytesLeft() > 0) {
            if (this.sampleData.bytesLeft() >= 8) {
                int readInt = this.sampleData.readInt();
                if (this.sampleData.readInt() == 1987343459) {
                    arrayList.add(parseVttCueBox(this.sampleData, this.builder, readInt - 8));
                } else {
                    this.sampleData.skipBytes(readInt - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new Mp4WebvttSubtitle(arrayList);
    }
}
