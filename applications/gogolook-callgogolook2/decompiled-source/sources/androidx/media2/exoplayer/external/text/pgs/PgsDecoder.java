package androidx.media2.exoplayer.external.text.pgs;

import android.graphics.Bitmap;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/pgs/PgsDecoder.class */
public final class PgsDecoder extends SimpleSubtitleDecoder {
    public static final byte INFLATE_HEADER = 120;
    public static final int SECTION_TYPE_BITMAP_PICTURE = 21;
    public static final int SECTION_TYPE_END = 128;
    public static final int SECTION_TYPE_IDENTIFIER = 22;
    public static final int SECTION_TYPE_PALETTE = 20;
    public Inflater inflater;
    public final ParsableByteArray buffer = new ParsableByteArray();
    public final ParsableByteArray inflatedBuffer = new ParsableByteArray();
    public final CueBuilder cueBuilder = new CueBuilder();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder.class */
    public static final class CueBuilder {
        public int bitmapHeight;
        public int bitmapWidth;
        public int bitmapX;
        public int bitmapY;
        public boolean colorsSet;
        public int planeHeight;
        public int planeWidth;
        public final ParsableByteArray bitmapData = new ParsableByteArray();
        public final int[] colors = new int[256];

        /* JADX INFO: Access modifiers changed from: private */
        public void parseBitmapSection(ParsableByteArray parsableByteArray, int i) {
            int readUnsignedInt24;
            if (i >= 4) {
                parsableByteArray.skipBytes(3);
                int i2 = i - 4;
                int i3 = i2;
                if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
                    if (i2 >= 7 && (readUnsignedInt24 = parsableByteArray.readUnsignedInt24()) >= 4) {
                        this.bitmapWidth = parsableByteArray.readUnsignedShort();
                        this.bitmapHeight = parsableByteArray.readUnsignedShort();
                        this.bitmapData.reset(readUnsignedInt24 - 4);
                        i3 = i2 - 7;
                    } else {
                        return;
                    }
                }
                int position = this.bitmapData.getPosition();
                int limit = this.bitmapData.limit();
                if (position < limit && i3 > 0) {
                    int min = Math.min(i3, limit - position);
                    parsableByteArray.readBytes(this.bitmapData.data, position, min);
                    this.bitmapData.setPosition(position + min);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseIdentifierSection(ParsableByteArray parsableByteArray, int i) {
            if (i >= 19) {
                this.planeWidth = parsableByteArray.readUnsignedShort();
                this.planeHeight = parsableByteArray.readUnsignedShort();
                parsableByteArray.skipBytes(11);
                this.bitmapX = parsableByteArray.readUnsignedShort();
                this.bitmapY = parsableByteArray.readUnsignedShort();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parsePaletteSection(ParsableByteArray parsableByteArray, int i) {
            if (i % 5 == 2) {
                parsableByteArray.skipBytes(2);
                Arrays.fill(this.colors, 0);
                int i2 = i / 5;
                for (int i3 = 0; i3 < i2; i3++) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte5 = parsableByteArray.readUnsignedByte();
                    double d = readUnsignedByte2;
                    double d2 = readUnsignedByte3 - 128;
                    int i4 = (int) ((1.402d * d2) + d);
                    double d3 = readUnsignedByte4 - 128;
                    int i5 = (int) ((d - (0.34414d * d3)) - (d2 * 0.71414d));
                    int i6 = (int) (d + (d3 * 1.772d));
                    this.colors[readUnsignedByte] = Util.constrainValue(i6, 0, 255) | (Util.constrainValue(i5, 0, 255) << 8) | (readUnsignedByte5 << 24) | (Util.constrainValue(i4, 0, 255) << 16);
                }
                this.colorsSet = true;
            }
        }

        public Cue build() {
            if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.limit() == 0 || this.bitmapData.getPosition() != this.bitmapData.limit() || !this.colorsSet) {
                return null;
            }
            this.bitmapData.setPosition(0);
            int[] iArr = new int[this.bitmapWidth * this.bitmapHeight];
            int i = 0;
            while (i < iArr.length) {
                int readUnsignedByte = this.bitmapData.readUnsignedByte();
                if (readUnsignedByte != 0) {
                    i++;
                    iArr[i] = this.colors[readUnsignedByte];
                } else {
                    int readUnsignedByte2 = this.bitmapData.readUnsignedByte();
                    if (readUnsignedByte2 != 0) {
                        int readUnsignedByte3 = (readUnsignedByte2 & 64) == 0 ? readUnsignedByte2 & 63 : ((readUnsignedByte2 & 63) << 8) | this.bitmapData.readUnsignedByte();
                        int i2 = (readUnsignedByte2 & 128) == 0 ? 0 : this.colors[this.bitmapData.readUnsignedByte()];
                        int i3 = readUnsignedByte3 + i;
                        Arrays.fill(iArr, i, i3, i2);
                        i = i3;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, Bitmap.Config.ARGB_8888);
            float f = this.bitmapX;
            int i4 = this.planeWidth;
            float f2 = f / i4;
            float f3 = this.bitmapY;
            int i5 = this.planeHeight;
            return new Cue(createBitmap, f2, 0, f3 / i5, 0, this.bitmapWidth / i4, this.bitmapHeight / i5);
        }

        public void reset() {
            this.planeWidth = 0;
            this.planeHeight = 0;
            this.bitmapX = 0;
            this.bitmapY = 0;
            this.bitmapWidth = 0;
            this.bitmapHeight = 0;
            this.bitmapData.reset(0);
            this.colorsSet = false;
        }
    }

    public PgsDecoder() {
        super("PgsDecoder");
    }

    private void maybeInflateData(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == 120) {
            if (this.inflater == null) {
                this.inflater = new Inflater();
            }
            if (Util.inflate(parsableByteArray, this.inflatedBuffer, this.inflater)) {
                ParsableByteArray parsableByteArray2 = this.inflatedBuffer;
                parsableByteArray.reset(parsableByteArray2.data, parsableByteArray2.limit());
            }
        }
    }

    public static Cue readNextSection(ParsableByteArray parsableByteArray, CueBuilder cueBuilder) {
        Cue cue;
        int limit = parsableByteArray.limit();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition() + readUnsignedShort;
        if (position > limit) {
            parsableByteArray.setPosition(limit);
            return null;
        }
        if (readUnsignedByte != 128) {
            switch (readUnsignedByte) {
                case 20:
                    cueBuilder.parsePaletteSection(parsableByteArray, readUnsignedShort);
                    cue = null;
                    break;
                case 21:
                    cueBuilder.parseBitmapSection(parsableByteArray, readUnsignedShort);
                    cue = null;
                    break;
                case 22:
                    cueBuilder.parseIdentifierSection(parsableByteArray, readUnsignedShort);
                    cue = null;
                    break;
                default:
                    cue = null;
                    break;
            }
        } else {
            cue = cueBuilder.build();
            cueBuilder.reset();
        }
        parsableByteArray.setPosition(position);
        return cue;
    }

    @Override // androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.buffer.reset(bArr, i);
        maybeInflateData(this.buffer);
        this.cueBuilder.reset();
        ArrayList arrayList = new ArrayList();
        while (this.buffer.bytesLeft() >= 3) {
            Cue readNextSection = readNextSection(this.buffer, this.cueBuilder);
            if (readNextSection != null) {
                arrayList.add(readNextSection);
            }
        }
        return new PgsSubtitle(Collections.unmodifiableList(arrayList));
    }
}
