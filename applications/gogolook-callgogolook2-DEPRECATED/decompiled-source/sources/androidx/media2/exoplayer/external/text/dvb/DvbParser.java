package androidx.media2.exoplayer.external.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser.class */
public final class DvbParser {
    public static final int DATA_TYPE_24_TABLE_DATA = 32;
    public static final int DATA_TYPE_28_TABLE_DATA = 33;
    public static final int DATA_TYPE_2BP_CODE_STRING = 16;
    public static final int DATA_TYPE_48_TABLE_DATA = 34;
    public static final int DATA_TYPE_4BP_CODE_STRING = 17;
    public static final int DATA_TYPE_8BP_CODE_STRING = 18;
    public static final int DATA_TYPE_END_LINE = 240;
    public static final int OBJECT_CODING_PIXELS = 0;
    public static final int OBJECT_CODING_STRING = 1;
    public static final int PAGE_STATE_NORMAL = 0;
    public static final int REGION_DEPTH_4_BIT = 2;
    public static final int REGION_DEPTH_8_BIT = 3;
    public static final int SEGMENT_TYPE_CLUT_DEFINITION = 18;
    public static final int SEGMENT_TYPE_DISPLAY_DEFINITION = 20;
    public static final int SEGMENT_TYPE_OBJECT_DATA = 19;
    public static final int SEGMENT_TYPE_PAGE_COMPOSITION = 16;
    public static final int SEGMENT_TYPE_REGION_COMPOSITION = 17;
    public static final String TAG = "DvbParser";
    public static final byte[] defaultMap2To4 = {0, 7, 8, 15};
    public static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    public static final byte[] defaultMap4To8 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public Bitmap bitmap;
    public final SubtitleService subtitleService;
    public final Paint defaultPaint = new Paint();
    public final Paint fillRegionPaint = new Paint();
    public final Canvas canvas = new Canvas();
    public final DisplayDefinition defaultDisplayDefinition = new DisplayDefinition(719, 575, 0, 719, 0, 575);
    public final ClutDefinition defaultClutDefinition = new ClutDefinition(0, generateDefault2BitClutEntries(), generateDefault4BitClutEntries(), generateDefault8BitClutEntries());

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition.class */
    public static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;

        /* renamed from: id */
        public final int f100id;

        public ClutDefinition(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f100id = i;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition.class */
    public static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i, int i2, int i3, int i4, int i5, int i6) {
            this.width = i;
            this.height = i2;
            this.horizontalPositionMinimum = i3;
            this.horizontalPositionMaximum = i4;
            this.verticalPositionMinimum = i5;
            this.verticalPositionMaximum = i6;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData.class */
    public static final class ObjectData {
        public final byte[] bottomFieldData;

        /* renamed from: id */
        public final int f101id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f101id = i;
            this.nonModifyingColorFlag = z;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition.class */
    public static final class PageComposition {
        public final SparseArray<PageRegion> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i, int i2, int i3, SparseArray<PageRegion> sparseArray) {
            this.timeOutSecs = i;
            this.version = i2;
            this.state = i3;
            this.regions = sparseArray;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion.class */
    public static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i, int i2) {
            this.horizontalAddress = i;
            this.verticalAddress = i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition.class */
    public static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;

        /* renamed from: id */
        public final int f102id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray<RegionObject> regionObjects;
        public final int width;

        public RegionComposition(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<RegionObject> sparseArray) {
            this.f102id = i;
            this.fillFlag = z;
            this.width = i2;
            this.height = i3;
            this.levelOfCompatibility = i4;
            this.depth = i5;
            this.clutId = i6;
            this.pixelCode8Bit = i7;
            this.pixelCode4Bit = i8;
            this.pixelCode2Bit = i9;
            this.regionObjects = sparseArray;
        }

        public void mergeFrom(RegionComposition regionComposition) {
            if (regionComposition != null) {
                SparseArray<RegionObject> sparseArray = regionComposition.regionObjects;
                for (int i = 0; i < sparseArray.size(); i++) {
                    this.regionObjects.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject.class */
    public static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i, int i2, int i3, int i4, int i5, int i6) {
            this.type = i;
            this.provider = i2;
            this.horizontalPosition = i3;
            this.verticalPosition = i4;
            this.foregroundPixelCode = i5;
            this.backgroundPixelCode = i6;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService.class */
    public static final class SubtitleService {
        public final int ancillaryPageId;
        public DisplayDefinition displayDefinition;
        public PageComposition pageComposition;
        public final int subtitlePageId;
        public final SparseArray<RegionComposition> regions = new SparseArray<>();
        public final SparseArray<ClutDefinition> cluts = new SparseArray<>();
        public final SparseArray<ObjectData> objects = new SparseArray<>();
        public final SparseArray<ClutDefinition> ancillaryCluts = new SparseArray<>();
        public final SparseArray<ObjectData> ancillaryObjects = new SparseArray<>();

        public SubtitleService(int i, int i2) {
            this.subtitlePageId = i;
            this.ancillaryPageId = i2;
        }

        public void reset() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }
    }

    public DvbParser(int i, int i2) {
        this.defaultPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.defaultPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.defaultPaint.setPathEffect(null);
        this.fillRegionPaint.setStyle(Paint.Style.FILL);
        this.fillRegionPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.fillRegionPaint.setPathEffect(null);
        this.subtitleService = new SubtitleService(i, i2);
    }

    public static byte[] buildClutMapTable(int i, int i2, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) parsableBitArray.readBits(i2);
        }
        return bArr;
    }

    public static int[] generateDefault2BitClutEntries() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] generateDefault4BitClutEntries() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                iArr[i] = getColor(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i2 = 127;
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = getColor(255, i3, i4, i2);
            }
        }
        return iArr;
    }

    public static int[] generateDefault8BitClutEntries() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = 255;
            if (i < 8) {
                int i3 = (i & 1) != 0 ? 255 : 0;
                int i4 = (i & 2) != 0 ? 255 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = getColor(63, i3, i4, i2);
            } else {
                int i5 = i & 136;
                int i6 = 170;
                int i7 = 85;
                if (i5 == 0) {
                    int i8 = (i & 1) != 0 ? 85 : 0;
                    int i9 = (i & 16) != 0 ? 170 : 0;
                    int i10 = (i & 2) != 0 ? 85 : 0;
                    int i11 = (i & 32) != 0 ? 170 : 0;
                    if ((i & 4) == 0) {
                        i7 = 0;
                    }
                    if ((i & 64) == 0) {
                        i6 = 0;
                    }
                    iArr[i] = getColor(255, i8 + i9, i10 + i11, i7 + i6);
                } else if (i5 != 8) {
                    int i12 = 43;
                    if (i5 == 128) {
                        int i13 = (i & 1) != 0 ? 43 : 0;
                        int i14 = (i & 16) != 0 ? 85 : 0;
                        int i15 = (i & 2) != 0 ? 43 : 0;
                        int i16 = (i & 32) != 0 ? 85 : 0;
                        if ((i & 4) == 0) {
                            i12 = 0;
                        }
                        if ((i & 64) == 0) {
                            i7 = 0;
                        }
                        iArr[i] = getColor(255, i13 + 127 + i14, i15 + 127 + i16, i12 + 127 + i7);
                    } else if (i5 == 136) {
                        int i17 = (i & 1) != 0 ? 43 : 0;
                        int i18 = (i & 16) != 0 ? 85 : 0;
                        int i19 = (i & 2) != 0 ? 43 : 0;
                        int i20 = (i & 32) != 0 ? 85 : 0;
                        if ((i & 4) == 0) {
                            i12 = 0;
                        }
                        if ((i & 64) == 0) {
                            i7 = 0;
                        }
                        iArr[i] = getColor(255, i17 + i18, i19 + i20, i12 + i7);
                    }
                } else {
                    int i21 = (i & 1) != 0 ? 85 : 0;
                    int i22 = (i & 16) != 0 ? 170 : 0;
                    int i23 = (i & 2) != 0 ? 85 : 0;
                    int i24 = (i & 32) != 0 ? 170 : 0;
                    if ((i & 4) == 0) {
                        i7 = 0;
                    }
                    if ((i & 64) == 0) {
                        i6 = 0;
                    }
                    iArr[i] = getColor(127, i21 + i22, i23 + i24, i7 + i6);
                }
            }
        }
        return iArr;
    }

    public static int getColor(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0101 A[LOOP:0: B:3:0x0009->B:38:0x0101, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int paint2BitPixelCodeString(androidx.media2.exoplayer.external.util.ParsableBitArray r7, int[] r8, byte[] r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.dvb.DvbParser.paint2BitPixelCodeString(androidx.media2.exoplayer.external.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011b A[LOOP:0: B:3:0x0009->B:41:0x011b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0118 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int paint4BitPixelCodeString(androidx.media2.exoplayer.external.util.ParsableBitArray r7, int[] r8, byte[] r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.dvb.DvbParser.paint4BitPixelCodeString(androidx.media2.exoplayer.external.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    public static int paint8BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int i3;
        int i4;
        boolean z = false;
        int i5 = i;
        while (true) {
            int readBits = parsableBitArray.readBits(8);
            if (readBits != 0) {
                z = z;
                i4 = readBits;
                i3 = 1;
            } else if (!parsableBitArray.readBit()) {
                i3 = parsableBitArray.readBits(7);
                if (i3 != 0) {
                    z = z;
                    i4 = 0;
                } else {
                    i4 = 0;
                    i3 = 0;
                    z = true;
                }
            } else {
                i3 = parsableBitArray.readBits(7);
                i4 = parsableBitArray.readBits(8);
                z = z;
            }
            if (!(i3 == 0 || paint == null)) {
                byte b = i4;
                if (bArr != null) {
                    b = bArr[i4];
                }
                char c = b == 1 ? 1 : 0;
                char c2 = b == 1 ? 1 : 0;
                paint.setColor(iArr[c]);
                canvas.drawRect(i5, i2, i5 + i3, i2 + 1, paint);
            }
            i5 += i3;
            if (z) {
                return i5;
            }
        }
    }

    public static void paintPixelDataSubBlock(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        int i4 = i3;
        int i5 = i2;
        while (parsableBitArray.bitsLeft() != 0) {
            int readBits = parsableBitArray.readBits(8);
            if (readBits != 240) {
                switch (readBits) {
                    case 16:
                        i5 = paint2BitPixelCodeString(parsableBitArray, iArr, i == 3 ? bArr2 == null ? defaultMap2To8 : bArr2 : i == 2 ? bArr3 == null ? defaultMap2To4 : bArr3 : null, i5, i4, paint, canvas);
                        parsableBitArray.byteAlign();
                        continue;
                    case 17:
                        i5 = paint4BitPixelCodeString(parsableBitArray, iArr, i == 3 ? defaultMap4To8 : null, i5, i4, paint, canvas);
                        parsableBitArray.byteAlign();
                        continue;
                    case 18:
                        i5 = paint8BitPixelCodeString(parsableBitArray, iArr, null, i5, i4, paint, canvas);
                        continue;
                    default:
                        switch (readBits) {
                            case 32:
                                bArr3 = buildClutMapTable(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArr2 = buildClutMapTable(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArr2 = buildClutMapTable(16, 8, parsableBitArray);
                                break;
                            default:
                                continue;
                        }
                }
            } else {
                i4 += 2;
                i5 = i2;
            }
        }
    }

    public static void paintPixelDataSubBlocks(ObjectData objectData, ClutDefinition clutDefinition, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr = i == 3 ? clutDefinition.clutEntries8Bit : i == 2 ? clutDefinition.clutEntries4Bit : clutDefinition.clutEntries2Bit;
        paintPixelDataSubBlock(objectData.topFieldData, iArr, i, i2, i3, paint, canvas);
        paintPixelDataSubBlock(objectData.bottomFieldData, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static ClutDefinition parseClutDefinition(ParsableBitArray parsableBitArray, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int readBits = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i6 = i - 2;
        int[] generateDefault2BitClutEntries = generateDefault2BitClutEntries();
        int[] generateDefault4BitClutEntries = generateDefault4BitClutEntries();
        int[] generateDefault8BitClutEntries = generateDefault8BitClutEntries();
        while (i6 > 0) {
            int readBits2 = parsableBitArray.readBits(8);
            int readBits3 = parsableBitArray.readBits(8);
            int i7 = i6 - 2;
            int[] iArr = (readBits3 & 128) != 0 ? generateDefault2BitClutEntries : (readBits3 & 64) != 0 ? generateDefault4BitClutEntries : generateDefault8BitClutEntries;
            if ((readBits3 & 1) != 0) {
                i4 = parsableBitArray.readBits(8);
                i3 = parsableBitArray.readBits(8);
                i2 = parsableBitArray.readBits(8);
                i5 = parsableBitArray.readBits(8);
                i6 = i7 - 4;
            } else {
                int readBits4 = parsableBitArray.readBits(6);
                int readBits5 = parsableBitArray.readBits(4);
                i2 = parsableBitArray.readBits(4) << 4;
                i6 = i7 - 2;
                i5 = parsableBitArray.readBits(2) << 6;
                i4 = readBits4 << 2;
                i3 = readBits5 << 4;
            }
            if (i4 == 0) {
                i3 = 0;
                i2 = 0;
                i5 = 255;
            }
            double d = i4;
            double d2 = i3 - 128;
            int i8 = (int) (d + (1.402d * d2));
            double d3 = i2 - 128;
            iArr[readBits2] = getColor((byte) (255 - (i5 & 255)), Util.constrainValue(i8, 0, 255), Util.constrainValue((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), Util.constrainValue((int) (d + (d3 * 1.772d)), 0, 255));
        }
        return new ClutDefinition(readBits, generateDefault2BitClutEntries, generateDefault4BitClutEntries, generateDefault8BitClutEntries);
    }

    public static DisplayDefinition parseDisplayDefinition(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        int i3;
        int i4;
        parsableBitArray.skipBits(4);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int readBits = parsableBitArray.readBits(16);
        int readBits2 = parsableBitArray.readBits(16);
        if (readBit) {
            i4 = parsableBitArray.readBits(16);
            i3 = parsableBitArray.readBits(16);
            i = parsableBitArray.readBits(16);
            i2 = parsableBitArray.readBits(16);
        } else {
            i3 = readBits;
            i2 = readBits2;
            i4 = 0;
            i = 0;
        }
        return new DisplayDefinition(readBits, readBits2, i4, i3, i, i2);
    }

    public static ObjectData parseObjectData(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int readBits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int readBits2 = parsableBitArray.readBits(2);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        if (readBits2 == 1) {
            parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        } else if (readBits2 == 0) {
            int readBits3 = parsableBitArray.readBits(16);
            int readBits4 = parsableBitArray.readBits(16);
            if (readBits3 > 0) {
                bArr3 = new byte[readBits3];
                parsableBitArray.readBytes(bArr3, 0, readBits3);
            }
            bArr2 = bArr3;
            if (readBits4 > 0) {
                byte[] bArr4 = new byte[readBits4];
                parsableBitArray.readBytes(bArr4, 0, readBits4);
                bArr = bArr4;
                bArr2 = bArr3;
                return new ObjectData(readBits, readBit, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new ObjectData(readBits, readBit, bArr2, bArr);
    }

    public static PageComposition parsePageComposition(ParsableBitArray parsableBitArray, int i) {
        int readBits = parsableBitArray.readBits(8);
        int readBits2 = parsableBitArray.readBits(4);
        int readBits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int readBits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i2 -= 6;
            sparseArray.put(readBits4, new PageRegion(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new PageComposition(readBits, readBits2, readBits3, sparseArray);
    }

    public static RegionComposition parseRegionComposition(ParsableBitArray parsableBitArray, int i) {
        int i2;
        int i3;
        int readBits = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(4);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int readBits2 = parsableBitArray.readBits(16);
        int readBits3 = parsableBitArray.readBits(16);
        int readBits4 = parsableBitArray.readBits(3);
        int readBits5 = parsableBitArray.readBits(3);
        parsableBitArray.skipBits(2);
        int readBits6 = parsableBitArray.readBits(8);
        int readBits7 = parsableBitArray.readBits(8);
        int readBits8 = parsableBitArray.readBits(4);
        int readBits9 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int readBits10 = parsableBitArray.readBits(16);
            int readBits11 = parsableBitArray.readBits(2);
            int readBits12 = parsableBitArray.readBits(2);
            int readBits13 = parsableBitArray.readBits(12);
            parsableBitArray.skipBits(4);
            int readBits14 = parsableBitArray.readBits(12);
            i4 -= 6;
            if (readBits11 == 1 || readBits11 == 2) {
                i3 = parsableBitArray.readBits(8);
                i2 = parsableBitArray.readBits(8);
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(readBits10, new RegionObject(readBits11, readBits12, readBits13, readBits14, i3, i2));
        }
        return new RegionComposition(readBits, readBit, readBits2, readBits3, readBits4, readBits5, readBits6, readBits7, readBits8, readBits9, sparseArray);
    }

    public static void parseSubtitlingSegment(ParsableBitArray parsableBitArray, SubtitleService subtitleService) {
        int readBits = parsableBitArray.readBits(8);
        int readBits2 = parsableBitArray.readBits(16);
        int readBits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition();
        if (readBits3 * 8 > parsableBitArray.bitsLeft()) {
            Log.m37483w(TAG, "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (readBits) {
            case 16:
                if (readBits2 == subtitleService.subtitlePageId) {
                    PageComposition pageComposition = subtitleService.pageComposition;
                    PageComposition parsePageComposition = parsePageComposition(parsableBitArray, readBits3);
                    if (parsePageComposition.state == 0) {
                        if (!(pageComposition == null || pageComposition.version == parsePageComposition.version)) {
                            subtitleService.pageComposition = parsePageComposition;
                            break;
                        }
                    } else {
                        subtitleService.pageComposition = parsePageComposition;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                        break;
                    }
                }
                break;
            case 17:
                PageComposition pageComposition2 = subtitleService.pageComposition;
                if (readBits2 == subtitleService.subtitlePageId && pageComposition2 != null) {
                    RegionComposition parseRegionComposition = parseRegionComposition(parsableBitArray, readBits3);
                    if (pageComposition2.state == 0) {
                        parseRegionComposition.mergeFrom(subtitleService.regions.get(parseRegionComposition.f102id));
                    }
                    subtitleService.regions.put(parseRegionComposition.f102id, parseRegionComposition);
                    break;
                }
                break;
            case 18:
                if (readBits2 != subtitleService.subtitlePageId) {
                    if (readBits2 == subtitleService.ancillaryPageId) {
                        ClutDefinition parseClutDefinition = parseClutDefinition(parsableBitArray, readBits3);
                        subtitleService.ancillaryCluts.put(parseClutDefinition.f100id, parseClutDefinition);
                        break;
                    }
                } else {
                    ClutDefinition parseClutDefinition2 = parseClutDefinition(parsableBitArray, readBits3);
                    subtitleService.cluts.put(parseClutDefinition2.f100id, parseClutDefinition2);
                    break;
                }
                break;
            case 19:
                if (readBits2 != subtitleService.subtitlePageId) {
                    if (readBits2 == subtitleService.ancillaryPageId) {
                        ObjectData parseObjectData = parseObjectData(parsableBitArray);
                        subtitleService.ancillaryObjects.put(parseObjectData.f101id, parseObjectData);
                        break;
                    }
                } else {
                    ObjectData parseObjectData2 = parseObjectData(parsableBitArray);
                    subtitleService.objects.put(parseObjectData2.f101id, parseObjectData2);
                    break;
                }
                break;
            case 20:
                if (readBits2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = parseDisplayDefinition(parsableBitArray);
                    break;
                }
                break;
        }
        parsableBitArray.skipBytes((bytePosition + readBits3) - parsableBitArray.getBytePosition());
    }

    public List<Cue> decode(byte[] bArr, int i) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            parseSubtitlingSegment(parsableBitArray, this.subtitleService);
        }
        SubtitleService subtitleService = this.subtitleService;
        if (subtitleService.pageComposition == null) {
            return Collections.emptyList();
        }
        DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (!(bitmap != null && displayDefinition.width + 1 == bitmap.getWidth() && displayDefinition.height + 1 == this.bitmap.getHeight())) {
            this.bitmap = Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, Bitmap.Config.ARGB_8888);
            this.canvas.setBitmap(this.bitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<PageRegion> sparseArray = this.subtitleService.pageComposition.regions;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.canvas.save();
            PageRegion valueAt = sparseArray.valueAt(i2);
            RegionComposition regionComposition = this.subtitleService.regions.get(sparseArray.keyAt(i2));
            int i3 = valueAt.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i4 = valueAt.verticalAddress + displayDefinition.verticalPositionMinimum;
            this.canvas.clipRect(i3, i4, Math.min(regionComposition.width + i3, displayDefinition.horizontalPositionMaximum), Math.min(regionComposition.height + i4, displayDefinition.verticalPositionMaximum));
            ClutDefinition clutDefinition = this.subtitleService.cluts.get(regionComposition.clutId);
            ClutDefinition clutDefinition2 = clutDefinition;
            if (clutDefinition == null) {
                ClutDefinition clutDefinition3 = this.subtitleService.ancillaryCluts.get(regionComposition.clutId);
                clutDefinition2 = clutDefinition3;
                if (clutDefinition3 == null) {
                    clutDefinition2 = this.defaultClutDefinition;
                }
            }
            SparseArray<RegionObject> sparseArray2 = regionComposition.regionObjects;
            for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                int keyAt = sparseArray2.keyAt(i5);
                RegionObject valueAt2 = sparseArray2.valueAt(i5);
                ObjectData objectData = this.subtitleService.objects.get(keyAt);
                if (objectData == null) {
                    objectData = this.subtitleService.ancillaryObjects.get(keyAt);
                }
                if (objectData != null) {
                    paintPixelDataSubBlocks(objectData, clutDefinition2, regionComposition.depth, valueAt2.horizontalPosition + i3, i4 + valueAt2.verticalPosition, objectData.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                }
            }
            if (regionComposition.fillFlag) {
                int i6 = regionComposition.depth;
                this.fillRegionPaint.setColor(i6 == 3 ? clutDefinition2.clutEntries8Bit[regionComposition.pixelCode8Bit] : i6 == 2 ? clutDefinition2.clutEntries4Bit[regionComposition.pixelCode4Bit] : clutDefinition2.clutEntries2Bit[regionComposition.pixelCode2Bit]);
                this.canvas.drawRect(i3, i4, regionComposition.width + i3, regionComposition.height + i4, this.fillRegionPaint);
            }
            Bitmap createBitmap = Bitmap.createBitmap(this.bitmap, i3, i4, regionComposition.width, regionComposition.height);
            float f = i3;
            int i7 = displayDefinition.width;
            float f2 = f / i7;
            float f3 = i4;
            int i8 = displayDefinition.height;
            arrayList.add(new Cue(createBitmap, f2, 0, f3 / i8, 0, regionComposition.width / i7, regionComposition.height / i8));
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.canvas.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void reset() {
        this.subtitleService.reset();
    }
}
