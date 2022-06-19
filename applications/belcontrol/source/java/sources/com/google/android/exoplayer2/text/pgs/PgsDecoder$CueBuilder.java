package com.google.android.exoplayer2.text.pgs;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder.class */
public final class PgsDecoder$CueBuilder {
    private int bitmapHeight;
    private int bitmapWidth;
    private int bitmapX;
    private int bitmapY;
    private boolean colorsSet;
    private int planeHeight;
    private int planeWidth;
    private final ParsableByteArray bitmapData = new ParsableByteArray();
    private final int[] colors = new int[256];

    public void parseBitmapSection(ParsableByteArray parsableByteArray, int i) {
        int readUnsignedInt24;
        if (i < 4) {
            return;
        }
        parsableByteArray.skipBytes(3);
        int i2 = i - 4;
        int i3 = i2;
        if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
            if (i2 < 7 || (readUnsignedInt24 = parsableByteArray.readUnsignedInt24()) < 4) {
                return;
            }
            this.bitmapWidth = parsableByteArray.readUnsignedShort();
            this.bitmapHeight = parsableByteArray.readUnsignedShort();
            this.bitmapData.reset(readUnsignedInt24 - 4);
            i3 = i2 - 7;
        }
        int position = this.bitmapData.getPosition();
        int limit = this.bitmapData.limit();
        if (position >= limit || i3 <= 0) {
            return;
        }
        int min = Math.min(i3, limit - position);
        parsableByteArray.readBytes(this.bitmapData.data, position, min);
        this.bitmapData.setPosition(position + min);
    }

    public void parseIdentifierSection(ParsableByteArray parsableByteArray, int i) {
        if (i < 19) {
            return;
        }
        this.planeWidth = parsableByteArray.readUnsignedShort();
        this.planeHeight = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(11);
        this.bitmapX = parsableByteArray.readUnsignedShort();
        this.bitmapY = parsableByteArray.readUnsignedShort();
    }

    public void parsePaletteSection(ParsableByteArray parsableByteArray, int i) {
        if (i % 5 != 2) {
            return;
        }
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

    public Cue build() {
        if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.limit() == 0 || this.bitmapData.getPosition() != this.bitmapData.limit() || !this.colorsSet) {
            return null;
        }
        this.bitmapData.setPosition(0);
        int i = this.bitmapWidth * this.bitmapHeight;
        int[] iArr = new int[i];
        int i2 = 0;
        while (i2 < i) {
            int readUnsignedByte = this.bitmapData.readUnsignedByte();
            if (readUnsignedByte != 0) {
                iArr[i2] = this.colors[readUnsignedByte];
                i2++;
            } else {
                int readUnsignedByte2 = this.bitmapData.readUnsignedByte();
                if (readUnsignedByte2 != 0) {
                    int readUnsignedByte3 = (readUnsignedByte2 & 64) == 0 ? readUnsignedByte2 & 63 : ((readUnsignedByte2 & 63) << 8) | this.bitmapData.readUnsignedByte();
                    int i3 = (readUnsignedByte2 & 128) == 0 ? 0 : this.colors[this.bitmapData.readUnsignedByte()];
                    int i4 = readUnsignedByte3 + i2;
                    Arrays.fill(iArr, i2, i4, i3);
                    i2 = i4;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, Bitmap.Config.ARGB_8888);
        float f = this.bitmapX;
        int i5 = this.planeWidth;
        float f2 = f / i5;
        float f3 = this.bitmapY;
        int i6 = this.planeHeight;
        return new Cue(createBitmap, f2, 0, f3 / i6, 0, this.bitmapWidth / i5, this.bitmapHeight / i6);
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
