package androidx.media2.widget;

import android.graphics.Color;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser.class */
public class Cea708CCParser {
    public static final int CAPTION_EMIT_TYPE_BUFFER = 1;
    public static final int CAPTION_EMIT_TYPE_COMMAND_CLW = 4;
    public static final int CAPTION_EMIT_TYPE_COMMAND_CWX = 3;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DFX = 16;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLC = 10;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLW = 8;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLY = 9;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DSW = 5;
    public static final int CAPTION_EMIT_TYPE_COMMAND_HDW = 6;
    public static final int CAPTION_EMIT_TYPE_COMMAND_RST = 11;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPA = 12;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPC = 13;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPL = 14;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SWA = 15;
    public static final int CAPTION_EMIT_TYPE_COMMAND_TGW = 7;
    public static final int CAPTION_EMIT_TYPE_CONTROL = 2;
    public static final boolean DEBUG = false;
    public static final String MUSIC_NOTE_CHAR = new String("♫".getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
    public static final String TAG = "Cea708CCParser";
    public final StringBuilder mBuilder = new StringBuilder();
    public int mCommand = 0;
    public DisplayListener mListener;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionColor.class */
    public static class CaptionColor {
        public static final int OPACITY_FLASH = 1;
        public static final int OPACITY_SOLID = 0;
        public static final int OPACITY_TRANSLUCENT = 2;
        public static final int OPACITY_TRANSPARENT = 3;
        public final int blue;
        public final int green;
        public final int opacity;
        public final int red;
        public static final int[] COLOR_MAP = {0, 15, 240, 255};
        public static final int[] OPACITY_MAP = {255, 254, 128, 0};

        public CaptionColor(int i, int i2, int i3, int i4) {
            this.opacity = i;
            this.red = i2;
            this.green = i3;
            this.blue = i4;
        }

        public int getArgbValue() {
            int i = OPACITY_MAP[this.opacity];
            int[] iArr = COLOR_MAP;
            return Color.argb(i, iArr[this.red], iArr[this.green], iArr[this.blue]);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionEvent.class */
    public static class CaptionEvent {
        public final Object obj;
        public final int type;

        public CaptionEvent(int i, Object obj) {
            this.type = i;
            this.obj = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionPenAttr.class */
    public static class CaptionPenAttr {
        public static final int OFFSET_NORMAL = 1;
        public static final int OFFSET_SUBSCRIPT = 0;
        public static final int OFFSET_SUPERSCRIPT = 2;
        public static final int PEN_SIZE_LARGE = 2;
        public static final int PEN_SIZE_SMALL = 0;
        public static final int PEN_SIZE_STANDARD = 1;
        public final int edgeType;
        public final int fontTag;
        public final boolean italic;
        public final int penOffset;
        public final int penSize;
        public final int textTag;
        public final boolean underline;

        public CaptionPenAttr(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            this.penSize = i;
            this.penOffset = i2;
            this.textTag = i3;
            this.fontTag = i4;
            this.edgeType = i5;
            this.underline = z;
            this.italic = z2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionPenColor.class */
    public static class CaptionPenColor {
        public final CaptionColor backgroundColor;
        public final CaptionColor edgeColor;
        public final CaptionColor foregroundColor;

        public CaptionPenColor(CaptionColor captionColor, CaptionColor captionColor2, CaptionColor captionColor3) {
            this.foregroundColor = captionColor;
            this.backgroundColor = captionColor2;
            this.edgeColor = captionColor3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionPenLocation.class */
    public static class CaptionPenLocation {
        public final int column;
        public final int row;

        public CaptionPenLocation(int i, int i2) {
            this.row = i;
            this.column = i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionWindow.class */
    public static class CaptionWindow {
        public final int anchorHorizontal;
        public final int anchorId;
        public final int anchorVertical;
        public final int columnCount;
        public final boolean columnLock;

        /* renamed from: id */
        public final int f116id;
        public final int penStyle;
        public final int priority;
        public final boolean relativePositioning;
        public final int rowCount;
        public final boolean rowLock;
        public final boolean visible;
        public final int windowStyle;

        public CaptionWindow(int i, boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f116id = i;
            this.visible = z;
            this.rowLock = z2;
            this.columnLock = z3;
            this.priority = i2;
            this.relativePositioning = z4;
            this.anchorVertical = i3;
            this.anchorHorizontal = i4;
            this.anchorId = i5;
            this.rowCount = i6;
            this.columnCount = i7;
            this.penStyle = i8;
            this.windowStyle = i9;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$CaptionWindowAttr.class */
    public static class CaptionWindowAttr {
        public final CaptionColor borderColor;
        public final int borderType;
        public final int displayEffect;
        public final int effectDirection;
        public final int effectSpeed;
        public final CaptionColor fillColor;
        public final int justify;
        public final int printDirection;
        public final int scrollDirection;
        public final boolean wordWrap;

        public CaptionWindowAttr(CaptionColor captionColor, CaptionColor captionColor2, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.fillColor = captionColor;
            this.borderColor = captionColor2;
            this.borderType = i;
            this.wordWrap = z;
            this.printDirection = i2;
            this.scrollDirection = i3;
            this.justify = i4;
            this.effectDirection = i5;
            this.effectSpeed = i6;
            this.displayEffect = i7;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$Const.class */
    public static class Const {
        public static final int CODE_C0_BS = 8;
        public static final int CODE_C0_CR = 13;
        public static final int CODE_C0_ETX = 3;
        public static final int CODE_C0_EXT1 = 16;
        public static final int CODE_C0_FF = 12;
        public static final int CODE_C0_HCR = 14;
        public static final int CODE_C0_NUL = 0;
        public static final int CODE_C0_P16 = 24;
        public static final int CODE_C0_RANGE_END = 31;
        public static final int CODE_C0_RANGE_START = 0;
        public static final int CODE_C0_SKIP1_RANGE_END = 23;
        public static final int CODE_C0_SKIP1_RANGE_START = 16;
        public static final int CODE_C0_SKIP2_RANGE_END = 31;
        public static final int CODE_C0_SKIP2_RANGE_START = 24;
        public static final int CODE_C1_CLW = 136;
        public static final int CODE_C1_CW0 = 128;
        public static final int CODE_C1_CW1 = 129;
        public static final int CODE_C1_CW2 = 130;
        public static final int CODE_C1_CW3 = 131;
        public static final int CODE_C1_CW4 = 132;
        public static final int CODE_C1_CW5 = 133;
        public static final int CODE_C1_CW6 = 134;
        public static final int CODE_C1_CW7 = 135;
        public static final int CODE_C1_DF0 = 152;
        public static final int CODE_C1_DF1 = 153;
        public static final int CODE_C1_DF2 = 154;
        public static final int CODE_C1_DF3 = 155;
        public static final int CODE_C1_DF4 = 156;
        public static final int CODE_C1_DF5 = 157;
        public static final int CODE_C1_DF6 = 158;
        public static final int CODE_C1_DF7 = 159;
        public static final int CODE_C1_DLC = 142;
        public static final int CODE_C1_DLW = 140;
        public static final int CODE_C1_DLY = 141;
        public static final int CODE_C1_DSW = 137;
        public static final int CODE_C1_HDW = 138;
        public static final int CODE_C1_RANGE_END = 159;
        public static final int CODE_C1_RANGE_START = 128;
        public static final int CODE_C1_RST = 143;
        public static final int CODE_C1_SPA = 144;
        public static final int CODE_C1_SPC = 145;
        public static final int CODE_C1_SPL = 146;
        public static final int CODE_C1_SWA = 151;
        public static final int CODE_C1_TGW = 139;
        public static final int CODE_C2_RANGE_END = 31;
        public static final int CODE_C2_RANGE_START = 0;
        public static final int CODE_C2_SKIP0_RANGE_END = 7;
        public static final int CODE_C2_SKIP0_RANGE_START = 0;
        public static final int CODE_C2_SKIP1_RANGE_END = 15;
        public static final int CODE_C2_SKIP1_RANGE_START = 8;
        public static final int CODE_C2_SKIP2_RANGE_END = 23;
        public static final int CODE_C2_SKIP2_RANGE_START = 16;
        public static final int CODE_C2_SKIP3_RANGE_END = 31;
        public static final int CODE_C2_SKIP3_RANGE_START = 24;
        public static final int CODE_C3_RANGE_END = 159;
        public static final int CODE_C3_RANGE_START = 128;
        public static final int CODE_C3_SKIP4_RANGE_END = 135;
        public static final int CODE_C3_SKIP4_RANGE_START = 128;
        public static final int CODE_C3_SKIP5_RANGE_END = 143;
        public static final int CODE_C3_SKIP5_RANGE_START = 136;
        public static final int CODE_G0_MUSICNOTE = 127;
        public static final int CODE_G0_RANGE_END = 127;
        public static final int CODE_G0_RANGE_START = 32;
        public static final int CODE_G1_RANGE_END = 255;
        public static final int CODE_G1_RANGE_START = 160;
        public static final int CODE_G2_BLK = 48;
        public static final int CODE_G2_NBTSP = 33;
        public static final int CODE_G2_RANGE_END = 127;
        public static final int CODE_G2_RANGE_START = 32;
        public static final int CODE_G2_TSP = 32;
        public static final int CODE_G3_CC = 160;
        public static final int CODE_G3_RANGE_END = 255;
        public static final int CODE_G3_RANGE_START = 160;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CCParser$DisplayListener.class */
    public interface DisplayListener {
        void emitEvent(CaptionEvent captionEvent);
    }

    public Cea708CCParser(DisplayListener displayListener) {
        this.mListener = new DisplayListener() { // from class: androidx.media2.widget.Cea708CCParser.1
            @Override // androidx.media2.widget.Cea708CCParser.DisplayListener
            public void emitEvent(CaptionEvent captionEvent) {
            }
        };
        if (displayListener != null) {
            this.mListener = displayListener;
        }
    }

    private void emitCaptionBuffer() {
        if (this.mBuilder.length() > 0) {
            this.mListener.emitEvent(new CaptionEvent(1, this.mBuilder.toString()));
            this.mBuilder.setLength(0);
        }
    }

    private void emitCaptionEvent(CaptionEvent captionEvent) {
        emitCaptionBuffer();
        this.mListener.emitEvent(captionEvent);
    }

    private int parseC0(byte[] bArr, int i) {
        int i2;
        int i3 = this.mCommand;
        if (i3 < 24 || i3 > 31) {
            int i4 = this.mCommand;
            if (i4 < 16 || i4 > 23) {
                int i5 = this.mCommand;
                i2 = i;
                if (i5 != 0) {
                    if (i5 == 3) {
                        emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i5)));
                        i2 = i;
                    } else if (i5 != 8) {
                        switch (i5) {
                            case 12:
                                emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i5)));
                                i2 = i;
                                break;
                            case 13:
                                this.mBuilder.append('\n');
                                i2 = i;
                                break;
                            case 14:
                                emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i5)));
                                i2 = i;
                                break;
                            default:
                                i2 = i;
                                break;
                        }
                    } else {
                        emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i5)));
                        i2 = i;
                    }
                }
            } else {
                i2 = i + 1;
            }
        } else {
            if (i3 == 24) {
                try {
                    if (bArr[i] == 0) {
                        this.mBuilder.append((char) bArr[i + 1]);
                    } else {
                        this.mBuilder.append(new String(Arrays.copyOfRange(bArr, i, i + 2), "EUC-KR"));
                    }
                } catch (UnsupportedEncodingException e) {
                    Log.e("Cea708CCParser", "P16 Code - Could not find supported encoding", e);
                }
            }
            i2 = i + 2;
        }
        return i2;
    }

    private int parseC1(byte[] bArr, int i) {
        int i2 = this.mCommand;
        switch (i2) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                emitCaptionEvent(new CaptionEvent(3, Integer.valueOf(i2 - 128)));
                break;
            case 136:
                byte b = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(4, Integer.valueOf(b & 255)));
                break;
            case 137:
                byte b2 = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(5, Integer.valueOf(b2 & 255)));
                break;
            case 138:
                byte b3 = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(6, Integer.valueOf(b3 & 255)));
                break;
            case 139:
                byte b4 = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(7, Integer.valueOf(b4 & 255)));
                break;
            case 140:
                byte b5 = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(8, Integer.valueOf(b5 & 255)));
                break;
            case 141:
                byte b6 = bArr[i];
                i++;
                emitCaptionEvent(new CaptionEvent(9, Integer.valueOf(b6 & 255)));
                break;
            case 142:
                emitCaptionEvent(new CaptionEvent(10, null));
                break;
            case 143:
                emitCaptionEvent(new CaptionEvent(11, null));
                break;
            case 144:
                byte b7 = bArr[i];
                byte b8 = bArr[i];
                byte b9 = bArr[i];
                int i3 = i + 1;
                boolean z = (bArr[i3] & 128) != 0;
                i += 2;
                emitCaptionEvent(new CaptionEvent(12, new CaptionPenAttr(b8 & 3, (b9 & 12) >> 2, (b7 & 240) >> 4, bArr[i3] & 7, (bArr[i3] & 56) >> 3, (bArr[i3] & 64) != 0, z)));
                break;
            case 145:
                int i4 = i + 1;
                int i5 = i4 + 1;
                i = i5 + 1;
                emitCaptionEvent(new CaptionEvent(13, new CaptionPenColor(new CaptionColor((bArr[i] & 192) >> 6, (bArr[i] & 48) >> 4, (bArr[i] & 12) >> 2, bArr[i] & 3), new CaptionColor((bArr[i4] & 192) >> 6, (bArr[i4] & 48) >> 4, (bArr[i4] & 12) >> 2, bArr[i4] & 3), new CaptionColor(0, (bArr[i5] & 48) >> 4, (bArr[i5] & 12) >> 2, bArr[i5] & 3))));
                break;
            case 146:
                emitCaptionEvent(new CaptionEvent(14, new CaptionPenLocation(bArr[i] & 15, bArr[i + 1] & 63)));
                i += 2;
                break;
            case 151:
                CaptionColor captionColor = new CaptionColor((bArr[i] & 192) >> 6, (bArr[i] & 48) >> 4, (bArr[i] & 12) >> 2, bArr[i] & 3);
                int i6 = i + 1;
                byte b10 = bArr[i6];
                int i7 = i + 2;
                byte b11 = bArr[i7];
                CaptionColor captionColor2 = new CaptionColor(0, (bArr[i6] & 48) >> 4, (bArr[i6] & 12) >> 2, bArr[i6] & 3);
                boolean z2 = (bArr[i7] & 64) != 0;
                byte b12 = bArr[i7];
                byte b13 = bArr[i7];
                byte b14 = bArr[i7];
                int i8 = i + 3;
                i += 4;
                emitCaptionEvent(new CaptionEvent(15, new CaptionWindowAttr(captionColor, captionColor2, ((b10 & 192) >> 6) | ((b11 & 128) >> 5), z2, (b12 & 48) >> 4, (b13 & 12) >> 2, b14 & 3, (bArr[i8] & 12) >> 2, (bArr[i8] & 240) >> 4, bArr[i8] & 3)));
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                boolean z3 = (bArr[i] & 32) != 0;
                boolean z4 = (bArr[i] & 16) != 0;
                boolean z5 = (bArr[i] & 8) != 0;
                byte b15 = bArr[i];
                int i9 = i + 1;
                boolean z6 = (bArr[i9] & 128) != 0;
                int i10 = i + 3;
                int i11 = i + 5;
                i += 6;
                emitCaptionEvent(new CaptionEvent(16, new CaptionWindow(i2 - 152, z3, z4, z5, b15 & 7, z6, bArr[i9] & Byte.MAX_VALUE, bArr[i + 2] & 255, (bArr[i10] & 240) >> 4, bArr[i10] & 15, bArr[i + 4] & 63, bArr[i11] & 7, (bArr[i11] & 56) >> 3)));
                break;
        }
        return i;
    }

    private int parseC2(byte[] bArr, int i) {
        int i2;
        int i3 = this.mCommand;
        if (i3 < 0 || i3 > 7) {
            int i4 = this.mCommand;
            if (i4 < 8 || i4 > 15) {
                int i5 = this.mCommand;
                if (i5 < 16 || i5 > 23) {
                    int i6 = this.mCommand;
                    i2 = i;
                    if (i6 >= 24) {
                        i2 = i;
                        if (i6 <= 31) {
                            i2 = i + 3;
                        }
                    }
                } else {
                    i2 = i + 2;
                }
            } else {
                i2 = i + 1;
            }
        } else {
            i2 = i;
        }
        return i2;
    }

    private int parseC3(byte[] bArr, int i) {
        int i2;
        int i3 = this.mCommand;
        if (i3 < 128 || i3 > 135) {
            int i4 = this.mCommand;
            i2 = i;
            if (i4 >= 136) {
                i2 = i;
                if (i4 <= 143) {
                    i2 = i + 5;
                }
            }
        } else {
            i2 = i + 4;
        }
        return i2;
    }

    private int parseExt1(byte[] bArr, int i) {
        int i2;
        this.mCommand = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = this.mCommand;
        if (i4 < 0 || i4 > 31) {
            int i5 = this.mCommand;
            if (i5 < 128 || i5 > 159) {
                int i6 = this.mCommand;
                if (i6 < 32 || i6 > 127) {
                    int i7 = this.mCommand;
                    i2 = i3;
                    if (i7 >= 160) {
                        i2 = i3;
                        if (i7 <= 255) {
                            i2 = parseG3(bArr, i3);
                        }
                    }
                } else {
                    i2 = parseG2(bArr, i3);
                }
            } else {
                i2 = parseC3(bArr, i3);
            }
        } else {
            i2 = parseC2(bArr, i3);
        }
        return i2;
    }

    private int parseG0(byte[] bArr, int i) {
        int i2 = this.mCommand;
        if (i2 == 127) {
            this.mBuilder.append(MUSIC_NOTE_CHAR);
        } else {
            this.mBuilder.append((char) i2);
        }
        return i;
    }

    private int parseG1(byte[] bArr, int i) {
        this.mBuilder.append((char) this.mCommand);
        return i;
    }

    private int parseG2(byte[] bArr, int i) {
        int i2 = this.mCommand;
        if (i2 == 32 || i2 != 33) {
        }
        return i;
    }

    private int parseG3(byte[] bArr, int i) {
        return i;
    }

    private int parseServiceBlockData(byte[] bArr, int i) {
        int i2;
        this.mCommand = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = this.mCommand;
        if (i4 == 16) {
            i2 = parseExt1(bArr, i3);
        } else if (i4 < 0 || i4 > 31) {
            int i5 = this.mCommand;
            if (i5 < 128 || i5 > 159) {
                int i6 = this.mCommand;
                if (i6 < 32 || i6 > 127) {
                    int i7 = this.mCommand;
                    i2 = i3;
                    if (i7 >= 160) {
                        i2 = i3;
                        if (i7 <= 255) {
                            i2 = parseG1(bArr, i3);
                        }
                    }
                } else {
                    i2 = parseG0(bArr, i3);
                }
            } else {
                i2 = parseC1(bArr, i3);
            }
        } else {
            i2 = parseC0(bArr, i3);
        }
        return i2;
    }

    public void parse(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            i = parseServiceBlockData(bArr, i);
        }
        emitCaptionBuffer();
    }
}
