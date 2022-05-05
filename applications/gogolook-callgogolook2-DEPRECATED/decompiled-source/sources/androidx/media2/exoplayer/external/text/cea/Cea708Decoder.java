package androidx.media2.exoplayer.external.text.cea;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.SubtitleInputBuffer;
import androidx.media2.exoplayer.external.text.SubtitleOutputBuffer;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea708Decoder.class */
public final class Cea708Decoder extends CeaDecoder {
    public static final int CC_VALID_FLAG = 4;
    public static final int CHARACTER_BIG_CARONS = 42;
    public static final int CHARACTER_BIG_OE = 44;
    public static final int CHARACTER_BOLD_BULLET = 53;
    public static final int CHARACTER_CLOSE_DOUBLE_QUOTE = 52;
    public static final int CHARACTER_CLOSE_SINGLE_QUOTE = 50;
    public static final int CHARACTER_DIAERESIS_Y = 63;
    public static final int CHARACTER_ELLIPSIS = 37;
    public static final int CHARACTER_FIVE_EIGHTHS = 120;
    public static final int CHARACTER_HORIZONTAL_BORDER = 125;
    public static final int CHARACTER_LOWER_LEFT_BORDER = 124;
    public static final int CHARACTER_LOWER_RIGHT_BORDER = 126;
    public static final int CHARACTER_MN = 127;
    public static final int CHARACTER_NBTSP = 33;
    public static final int CHARACTER_ONE_EIGHTH = 118;
    public static final int CHARACTER_OPEN_DOUBLE_QUOTE = 51;
    public static final int CHARACTER_OPEN_SINGLE_QUOTE = 49;
    public static final int CHARACTER_SEVEN_EIGHTHS = 121;
    public static final int CHARACTER_SM = 61;
    public static final int CHARACTER_SMALL_CARONS = 58;
    public static final int CHARACTER_SMALL_OE = 60;
    public static final int CHARACTER_SOLID_BLOCK = 48;
    public static final int CHARACTER_THREE_EIGHTHS = 119;
    public static final int CHARACTER_TM = 57;
    public static final int CHARACTER_TSP = 32;
    public static final int CHARACTER_UPPER_LEFT_BORDER = 127;
    public static final int CHARACTER_UPPER_RIGHT_BORDER = 123;
    public static final int CHARACTER_VERTICAL_BORDER = 122;
    public static final int COMMAND_BS = 8;
    public static final int COMMAND_CLW = 136;
    public static final int COMMAND_CR = 13;
    public static final int COMMAND_CW0 = 128;
    public static final int COMMAND_CW1 = 129;
    public static final int COMMAND_CW2 = 130;
    public static final int COMMAND_CW3 = 131;
    public static final int COMMAND_CW4 = 132;
    public static final int COMMAND_CW5 = 133;
    public static final int COMMAND_CW6 = 134;
    public static final int COMMAND_CW7 = 135;
    public static final int COMMAND_DF0 = 152;
    public static final int COMMAND_DF1 = 153;
    public static final int COMMAND_DF2 = 154;
    public static final int COMMAND_DF3 = 155;
    public static final int COMMAND_DF4 = 156;
    public static final int COMMAND_DF5 = 157;
    public static final int COMMAND_DF6 = 158;
    public static final int COMMAND_DF7 = 159;
    public static final int COMMAND_DLC = 142;
    public static final int COMMAND_DLW = 140;
    public static final int COMMAND_DLY = 141;
    public static final int COMMAND_DSW = 137;
    public static final int COMMAND_ETX = 3;
    public static final int COMMAND_EXT1 = 16;
    public static final int COMMAND_EXT1_END = 23;
    public static final int COMMAND_EXT1_START = 17;
    public static final int COMMAND_FF = 12;
    public static final int COMMAND_HCR = 14;
    public static final int COMMAND_HDW = 138;
    public static final int COMMAND_NUL = 0;
    public static final int COMMAND_P16_END = 31;
    public static final int COMMAND_P16_START = 24;
    public static final int COMMAND_RST = 143;
    public static final int COMMAND_SPA = 144;
    public static final int COMMAND_SPC = 145;
    public static final int COMMAND_SPL = 146;
    public static final int COMMAND_SWA = 151;
    public static final int COMMAND_TGW = 139;
    public static final int DTVCC_PACKET_DATA = 2;
    public static final int DTVCC_PACKET_START = 3;
    public static final int GROUP_C0_END = 31;
    public static final int GROUP_C1_END = 159;
    public static final int GROUP_C2_END = 31;
    public static final int GROUP_C3_END = 159;
    public static final int GROUP_G0_END = 127;
    public static final int GROUP_G1_END = 255;
    public static final int GROUP_G2_END = 127;
    public static final int GROUP_G3_END = 255;
    public static final int NUM_WINDOWS = 8;
    public static final String TAG = "Cea708Decoder";
    public final CueBuilder[] cueBuilders;
    public List<Cue> cues;
    public CueBuilder currentCueBuilder;
    public DtvCcPacket currentDtvCcPacket;
    public int currentWindow;
    public List<Cue> lastCues;
    public final int selectedServiceNumber;
    public final ParsableByteArray ccData = new ParsableByteArray();
    public final ParsableBitArray serviceBlockPacket = new ParsableBitArray();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder.class */
    public static final class CueBuilder {
        public static final int BORDER_AND_EDGE_TYPE_NONE = 0;
        public static final int BORDER_AND_EDGE_TYPE_UNIFORM = 3;
        public static final int DEFAULT_PRIORITY = 4;
        public static final int DIRECTION_BOTTOM_TO_TOP = 3;
        public static final int DIRECTION_LEFT_TO_RIGHT = 0;
        public static final int DIRECTION_RIGHT_TO_LEFT = 1;
        public static final int DIRECTION_TOP_TO_BOTTOM = 2;
        public static final int HORIZONTAL_SIZE = 209;
        public static final int JUSTIFICATION_CENTER = 2;
        public static final int JUSTIFICATION_FULL = 3;
        public static final int JUSTIFICATION_LEFT = 0;
        public static final int JUSTIFICATION_RIGHT = 1;
        public static final int MAXIMUM_ROW_COUNT = 15;
        public static final int PEN_FONT_STYLE_DEFAULT = 0;
        public static final int PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS = 3;
        public static final int PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS = 1;
        public static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS = 4;
        public static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS = 2;
        public static final int PEN_OFFSET_NORMAL = 1;
        public static final int PEN_SIZE_STANDARD = 1;
        public static final int[] PEN_STYLE_BACKGROUND;
        public static final int RELATIVE_CUE_SIZE = 99;
        public static final int VERTICAL_SIZE = 74;
        public static final int[] WINDOW_STYLE_FILL;
        public int anchorId;
        public int backgroundColor;
        public int backgroundColorStartPosition;
        public boolean defined;
        public int foregroundColor;
        public int foregroundColorStartPosition;
        public int horizontalAnchor;
        public int italicsStartPosition;
        public int justification;
        public int penStyleId;
        public int priority;
        public boolean relativePositioning;
        public int row;
        public int rowCount;
        public boolean rowLock;
        public int underlineStartPosition;
        public int verticalAnchor;
        public boolean visible;
        public int windowFillColor;
        public int windowStyleId;
        public static final int COLOR_SOLID_WHITE = getArgbColorFromCeaColor(2, 2, 2, 0);
        public static final int COLOR_SOLID_BLACK = getArgbColorFromCeaColor(0, 0, 0, 0);
        public static final int COLOR_TRANSPARENT = getArgbColorFromCeaColor(0, 0, 0, 3);
        public static final int[] WINDOW_STYLE_JUSTIFICATION = {0, 0, 0, 0, 0, 2, 0};
        public static final int[] WINDOW_STYLE_PRINT_DIRECTION = {0, 0, 0, 0, 0, 0, 2};
        public static final int[] WINDOW_STYLE_SCROLL_DIRECTION = {3, 3, 3, 3, 3, 3, 1};
        public static final boolean[] WINDOW_STYLE_WORD_WRAP = {false, false, false, true, true, true, false};
        public static final int[] PEN_STYLE_FONT_STYLE = {0, 1, 2, 3, 4, 3, 4};
        public static final int[] PEN_STYLE_EDGE_TYPE = {0, 0, 0, 0, 0, 3, 3};
        public final List<SpannableString> rolledUpCaptions = new ArrayList();
        public final SpannableStringBuilder captionStringBuilder = new SpannableStringBuilder();

        static {
            int i = COLOR_SOLID_BLACK;
            int i2 = COLOR_TRANSPARENT;
            WINDOW_STYLE_FILL = new int[]{i, i2, i, i, i2, i, i};
            PEN_STYLE_BACKGROUND = new int[]{i, i, i, i, i, i2, i2};
        }

        public CueBuilder() {
            reset();
        }

        public static int getArgbColorFromCeaColor(int i, int i2, int i3) {
            return getArgbColorFromCeaColor(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getArgbColorFromCeaColor(int r5, int r6, int r7, int r8) {
            /*
                r0 = 0
                r9 = r0
                r0 = r5
                r1 = 0
                r2 = 4
                int r0 = androidx.media2.exoplayer.external.util.Assertions.checkIndex(r0, r1, r2)
                r0 = r6
                r1 = 0
                r2 = 4
                int r0 = androidx.media2.exoplayer.external.util.Assertions.checkIndex(r0, r1, r2)
                r0 = r7
                r1 = 0
                r2 = 4
                int r0 = androidx.media2.exoplayer.external.util.Assertions.checkIndex(r0, r1, r2)
                r0 = r8
                r1 = 0
                r2 = 4
                int r0 = androidx.media2.exoplayer.external.util.Assertions.checkIndex(r0, r1, r2)
                r0 = r8
                if (r0 == 0) goto L_0x0032
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L_0x0032
                r0 = r8
                r1 = 2
                if (r0 == r1) goto L_0x003e
                r0 = r8
                r1 = 3
                if (r0 == r1) goto L_0x0039
            L_0x0032:
                r0 = 255(0xff, float:3.57E-43)
                r8 = r0
                goto L_0x0041
            L_0x0039:
                r0 = 0
                r8 = r0
                goto L_0x0041
            L_0x003e:
                r0 = 127(0x7f, float:1.78E-43)
                r8 = r0
            L_0x0041:
                r0 = r5
                r1 = 1
                if (r0 <= r1) goto L_0x004d
                r0 = 255(0xff, float:3.57E-43)
                r5 = r0
                goto L_0x004f
            L_0x004d:
                r0 = 0
                r5 = r0
            L_0x004f:
                r0 = r6
                r1 = 1
                if (r0 <= r1) goto L_0x005b
                r0 = 255(0xff, float:3.57E-43)
                r6 = r0
                goto L_0x005d
            L_0x005b:
                r0 = 0
                r6 = r0
            L_0x005d:
                r0 = r7
                r1 = 1
                if (r0 <= r1) goto L_0x0067
                r0 = 255(0xff, float:3.57E-43)
                r9 = r0
            L_0x0067:
                r0 = r8
                r1 = r5
                r2 = r6
                r3 = r9
                int r0 = android.graphics.Color.argb(r0, r1, r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.cea.Cea708Decoder.CueBuilder.getArgbColorFromCeaColor(int, int, int, int):int");
        }

        public void append(char c) {
            if (c == '\n') {
                this.rolledUpCaptions.add(buildSpannableString());
                this.captionStringBuilder.clear();
                if (this.italicsStartPosition != -1) {
                    this.italicsStartPosition = 0;
                }
                if (this.underlineStartPosition != -1) {
                    this.underlineStartPosition = 0;
                }
                if (this.foregroundColorStartPosition != -1) {
                    this.foregroundColorStartPosition = 0;
                }
                if (this.backgroundColorStartPosition != -1) {
                    this.backgroundColorStartPosition = 0;
                }
                while (true) {
                    if ((this.rowLock && this.rolledUpCaptions.size() >= this.rowCount) || this.rolledUpCaptions.size() >= 15) {
                        this.rolledUpCaptions.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.captionStringBuilder.append(c);
            }
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00de  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0104  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.media2.exoplayer.external.text.cea.Cea708Cue build() {
            /*
                Method dump skipped, instructions count: 331
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.cea.Cea708Decoder.CueBuilder.build():androidx.media2.exoplayer.external.text.cea.Cea708Cue");
        }

        public SpannableString buildSpannableString() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.italicsStartPosition != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, length, 33);
                }
                if (this.underlineStartPosition != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, length, 33);
                }
                if (this.foregroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, length, 33);
                }
                if (this.backgroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void clear() {
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.clear();
            this.italicsStartPosition = -1;
            this.underlineStartPosition = -1;
            this.foregroundColorStartPosition = -1;
            this.backgroundColorStartPosition = -1;
            this.row = 0;
        }

        public void defineWindow(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.defined = true;
            this.visible = z;
            this.rowLock = z2;
            this.priority = i;
            this.relativePositioning = z4;
            this.verticalAnchor = i2;
            this.horizontalAnchor = i3;
            this.anchorId = i6;
            int i9 = i4 + 1;
            if (this.rowCount != i9) {
                this.rowCount = i9;
                while (true) {
                    if ((!z2 || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                        break;
                    }
                    this.rolledUpCaptions.remove(0);
                }
            }
            if (!(i7 == 0 || this.windowStyleId == i7)) {
                this.windowStyleId = i7;
                int i10 = i7 - 1;
                setWindowAttributes(WINDOW_STYLE_FILL[i10], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i10], 0, WINDOW_STYLE_PRINT_DIRECTION[i10], WINDOW_STYLE_SCROLL_DIRECTION[i10], WINDOW_STYLE_JUSTIFICATION[i10]);
            }
            if (i8 != 0 && this.penStyleId != i8) {
                this.penStyleId = i8;
                int i11 = i8 - 1;
                setPenAttributes(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i11], PEN_STYLE_FONT_STYLE[i11]);
                setPenColor(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i11], COLOR_SOLID_BLACK);
            }
        }

        public boolean isDefined() {
            return this.defined;
        }

        public boolean isEmpty() {
            return !isDefined() || (this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0);
        }

        public boolean isVisible() {
            return this.visible;
        }

        public void reset() {
            clear();
            this.defined = false;
            this.visible = false;
            this.priority = 4;
            this.relativePositioning = false;
            this.verticalAnchor = 0;
            this.horizontalAnchor = 0;
            this.anchorId = 0;
            this.rowCount = 15;
            this.rowLock = true;
            this.justification = 0;
            this.windowStyleId = 0;
            this.penStyleId = 0;
            int i = COLOR_SOLID_BLACK;
            this.windowFillColor = i;
            this.foregroundColor = COLOR_SOLID_WHITE;
            this.backgroundColor = i;
        }

        public void setPenAttributes(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.italicsStartPosition != -1) {
                if (!z) {
                    this.captionStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, this.captionStringBuilder.length(), 33);
                    this.italicsStartPosition = -1;
                }
            } else if (z) {
                this.italicsStartPosition = this.captionStringBuilder.length();
            }
            if (this.underlineStartPosition != -1) {
                if (!z2) {
                    this.captionStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
                    this.underlineStartPosition = -1;
                }
            } else if (z2) {
                this.underlineStartPosition = this.captionStringBuilder.length();
            }
        }

        public void setPenColor(int i, int i2, int i3) {
            int i4;
            int i5;
            if (!(this.foregroundColorStartPosition == -1 || (i5 = this.foregroundColor) == i)) {
                this.captionStringBuilder.setSpan(new ForegroundColorSpan(i5), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i != COLOR_SOLID_WHITE) {
                this.foregroundColorStartPosition = this.captionStringBuilder.length();
                this.foregroundColor = i;
            }
            if (!(this.backgroundColorStartPosition == -1 || (i4 = this.backgroundColor) == i2)) {
                this.captionStringBuilder.setSpan(new BackgroundColorSpan(i4), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i2 != COLOR_SOLID_BLACK) {
                this.backgroundColorStartPosition = this.captionStringBuilder.length();
                this.backgroundColor = i2;
            }
        }

        public void setPenLocation(int i, int i2) {
            if (this.row != i) {
                append('\n');
            }
            this.row = i;
        }

        public void setVisibility(boolean z) {
            this.visible = z;
        }

        public void setWindowAttributes(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.windowFillColor = i;
            this.justification = i6;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket.class */
    public static final class DtvCcPacket {
        public int currentIndex = 0;
        public final byte[] packetData;
        public final int packetSize;
        public final int sequenceNumber;

        public DtvCcPacket(int i, int i2) {
            this.sequenceNumber = i;
            this.packetSize = i2;
            this.packetData = new byte[(i2 * 2) - 1];
        }
    }

    public Cea708Decoder(int i, List<byte[]> list) {
        this.selectedServiceNumber = i == -1 ? 1 : i;
        this.cueBuilders = new CueBuilder[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.cueBuilders[i2] = new CueBuilder();
        }
        this.currentCueBuilder = this.cueBuilders[0];
        resetCueBuilders();
    }

    private void finalizeCurrentPacket() {
        if (this.currentDtvCcPacket != null) {
            processCurrentPacket();
            this.currentDtvCcPacket = null;
        }
    }

    private List<Cue> getDisplayCues() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.cueBuilders[i].isEmpty() && this.cueBuilders[i].isVisible()) {
                arrayList.add(this.cueBuilders[i].build());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    private void handleC0Command(int i) {
        if (i == 0) {
            return;
        }
        if (i == 3) {
            this.cues = getDisplayCues();
        } else if (i != 8) {
            switch (i) {
                case 12:
                    resetCueBuilders();
                    return;
                case 13:
                    this.currentCueBuilder.append('\n');
                    return;
                case 14:
                    return;
                default:
                    if (i >= 17 && i <= 23) {
                        StringBuilder sb = new StringBuilder(55);
                        sb.append("Currently unsupported COMMAND_EXT1 Command: ");
                        sb.append(i);
                        Log.m37483w(TAG, sb.toString());
                        this.serviceBlockPacket.skipBits(8);
                        return;
                    } else if (i < 24 || i > 31) {
                        StringBuilder sb2 = new StringBuilder(31);
                        sb2.append("Invalid C0 command: ");
                        sb2.append(i);
                        Log.m37483w(TAG, sb2.toString());
                        return;
                    } else {
                        StringBuilder sb3 = new StringBuilder(54);
                        sb3.append("Currently unsupported COMMAND_P16 Command: ");
                        sb3.append(i);
                        Log.m37483w(TAG, sb3.toString());
                        this.serviceBlockPacket.skipBits(16);
                        return;
                    }
            }
        } else {
            this.currentCueBuilder.backspace();
        }
    }

    private void handleC1Command(int i) {
        CueBuilder cueBuilder;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i2 = i - 128;
                if (this.currentWindow != i2) {
                    this.currentWindow = i2;
                    this.currentCueBuilder = this.cueBuilders[i2];
                    return;
                }
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i3].clear();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i4].setVisibility(true);
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i5].setVisibility(false);
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i6].setVisibility(!cueBuilder.isVisible());
                    }
                }
                return;
            case 140:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i7].reset();
                    }
                }
                return;
            case 141:
                this.serviceBlockPacket.skipBits(8);
                return;
            case 142:
                return;
            case 143:
                resetCueBuilders();
                return;
            case 144:
                if (!this.currentCueBuilder.isDefined()) {
                    this.serviceBlockPacket.skipBits(16);
                    return;
                } else {
                    handleSetPenAttributes();
                    return;
                }
            case 145:
                if (!this.currentCueBuilder.isDefined()) {
                    this.serviceBlockPacket.skipBits(24);
                    return;
                } else {
                    handleSetPenColor();
                    return;
                }
            case 146:
                if (!this.currentCueBuilder.isDefined()) {
                    this.serviceBlockPacket.skipBits(16);
                    return;
                } else {
                    handleSetPenLocation();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid C1 command: ");
                sb.append(i);
                Log.m37483w(TAG, sb.toString());
                return;
            case 151:
                if (!this.currentCueBuilder.isDefined()) {
                    this.serviceBlockPacket.skipBits(32);
                    return;
                } else {
                    handleSetWindowAttributes();
                    return;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i8 = i - 152;
                handleDefineWindow(i8);
                if (this.currentWindow != i8) {
                    this.currentWindow = i8;
                    this.currentCueBuilder = this.cueBuilders[i8];
                    return;
                }
                return;
        }
    }

    private void handleC2Command(int i) {
        if (i > 7) {
            if (i <= 15) {
                this.serviceBlockPacket.skipBits(8);
            } else if (i <= 23) {
                this.serviceBlockPacket.skipBits(16);
            } else if (i <= 31) {
                this.serviceBlockPacket.skipBits(24);
            }
        }
    }

    private void handleC3Command(int i) {
        if (i <= 135) {
            this.serviceBlockPacket.skipBits(32);
        } else if (i <= 143) {
            this.serviceBlockPacket.skipBits(40);
        } else if (i <= 159) {
            this.serviceBlockPacket.skipBits(2);
            this.serviceBlockPacket.skipBits(this.serviceBlockPacket.readBits(6) * 8);
        }
    }

    private void handleDefineWindow(int i) {
        CueBuilder cueBuilder = this.cueBuilders[i];
        this.serviceBlockPacket.skipBits(2);
        boolean readBit = this.serviceBlockPacket.readBit();
        boolean readBit2 = this.serviceBlockPacket.readBit();
        boolean readBit3 = this.serviceBlockPacket.readBit();
        int readBits = this.serviceBlockPacket.readBits(3);
        boolean readBit4 = this.serviceBlockPacket.readBit();
        int readBits2 = this.serviceBlockPacket.readBits(7);
        int readBits3 = this.serviceBlockPacket.readBits(8);
        int readBits4 = this.serviceBlockPacket.readBits(4);
        int readBits5 = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        int readBits6 = this.serviceBlockPacket.readBits(6);
        this.serviceBlockPacket.skipBits(2);
        cueBuilder.defineWindow(readBit, readBit2, readBit3, readBits, readBit4, readBits2, readBits3, readBits5, readBits6, readBits4, this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleG0Character(int i) {
        if (i == 127) {
            this.currentCueBuilder.append((char) 9835);
        } else {
            this.currentCueBuilder.append((char) (i & 255));
        }
    }

    private void handleG1Character(int i) {
        this.currentCueBuilder.append((char) (i & 255));
    }

    private void handleG2Character(int i) {
        if (i == 32) {
            this.currentCueBuilder.append(' ');
        } else if (i == 33) {
            this.currentCueBuilder.append((char) 160);
        } else if (i == 37) {
            this.currentCueBuilder.append((char) 8230);
        } else if (i == 42) {
            this.currentCueBuilder.append((char) 352);
        } else if (i == 44) {
            this.currentCueBuilder.append((char) 338);
        } else if (i == 63) {
            this.currentCueBuilder.append((char) 376);
        } else if (i == 57) {
            this.currentCueBuilder.append((char) 8482);
        } else if (i == 58) {
            this.currentCueBuilder.append((char) 353);
        } else if (i == 60) {
            this.currentCueBuilder.append((char) 339);
        } else if (i != 61) {
            switch (i) {
                case 48:
                    this.currentCueBuilder.append((char) 9608);
                    return;
                case 49:
                    this.currentCueBuilder.append((char) 8216);
                    return;
                case 50:
                    this.currentCueBuilder.append((char) 8217);
                    return;
                case 51:
                    this.currentCueBuilder.append((char) 8220);
                    return;
                case 52:
                    this.currentCueBuilder.append((char) 8221);
                    return;
                case 53:
                    this.currentCueBuilder.append((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.currentCueBuilder.append((char) 8539);
                            return;
                        case 119:
                            this.currentCueBuilder.append((char) 8540);
                            return;
                        case 120:
                            this.currentCueBuilder.append((char) 8541);
                            return;
                        case 121:
                            this.currentCueBuilder.append((char) 8542);
                            return;
                        case 122:
                            this.currentCueBuilder.append((char) 9474);
                            return;
                        case 123:
                            this.currentCueBuilder.append((char) 9488);
                            return;
                        case 124:
                            this.currentCueBuilder.append((char) 9492);
                            return;
                        case 125:
                            this.currentCueBuilder.append((char) 9472);
                            return;
                        case CHARACTER_LOWER_RIGHT_BORDER /* 126 */:
                            this.currentCueBuilder.append((char) 9496);
                            return;
                        case 127:
                            this.currentCueBuilder.append((char) 9484);
                            return;
                        default:
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Invalid G2 character: ");
                            sb.append(i);
                            Log.m37483w(TAG, sb.toString());
                            return;
                    }
            }
        } else {
            this.currentCueBuilder.append((char) 8480);
        }
    }

    private void handleG3Character(int i) {
        if (i == 160) {
            this.currentCueBuilder.append((char) 13252);
            return;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid G3 character: ");
        sb.append(i);
        Log.m37483w(TAG, sb.toString());
        this.currentCueBuilder.append('_');
    }

    private void handleSetPenAttributes() {
        this.currentCueBuilder.setPenAttributes(this.serviceBlockPacket.readBits(4), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleSetPenColor() {
        int argbColorFromCeaColor = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int argbColorFromCeaColor2 = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        this.serviceBlockPacket.skipBits(2);
        this.currentCueBuilder.setPenColor(argbColorFromCeaColor, argbColorFromCeaColor2, CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2)));
    }

    private void handleSetPenLocation() {
        this.serviceBlockPacket.skipBits(4);
        int readBits = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        this.currentCueBuilder.setPenLocation(readBits, this.serviceBlockPacket.readBits(6));
    }

    private void handleSetWindowAttributes() {
        int argbColorFromCeaColor = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int readBits = this.serviceBlockPacket.readBits(2);
        int argbColorFromCeaColor2 = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int i = readBits;
        if (this.serviceBlockPacket.readBit()) {
            i = readBits | 4;
        }
        boolean readBit = this.serviceBlockPacket.readBit();
        int readBits2 = this.serviceBlockPacket.readBits(2);
        int readBits3 = this.serviceBlockPacket.readBits(2);
        int readBits4 = this.serviceBlockPacket.readBits(2);
        this.serviceBlockPacket.skipBits(8);
        this.currentCueBuilder.setWindowAttributes(argbColorFromCeaColor, argbColorFromCeaColor2, readBit, i, readBits2, readBits3, readBits4);
    }

    private void processCurrentPacket() {
        DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
        int i = dtvCcPacket.currentIndex;
        int i2 = dtvCcPacket.packetSize;
        if (i != (i2 * 2) - 1) {
            int i3 = dtvCcPacket.sequenceNumber;
            StringBuilder sb = new StringBuilder(131);
            sb.append("DtvCcPacket ended prematurely; size is ");
            sb.append((i2 * 2) - 1);
            sb.append(", but current index is ");
            sb.append(i);
            sb.append(" (sequence number ");
            sb.append(i3);
            sb.append("); ignoring packet");
            Log.m37483w(TAG, sb.toString());
            return;
        }
        this.serviceBlockPacket.reset(dtvCcPacket.packetData, i);
        int readBits = this.serviceBlockPacket.readBits(3);
        int readBits2 = this.serviceBlockPacket.readBits(5);
        int i4 = readBits;
        if (readBits == 7) {
            this.serviceBlockPacket.skipBits(2);
            int readBits3 = this.serviceBlockPacket.readBits(6);
            i4 = readBits3;
            if (readBits3 < 7) {
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Invalid extended service number: ");
                sb2.append(readBits3);
                Log.m37483w(TAG, sb2.toString());
                i4 = readBits3;
            }
        }
        if (readBits2 == 0) {
            if (i4 != 0) {
                StringBuilder sb3 = new StringBuilder(59);
                sb3.append("serviceNumber is non-zero (");
                sb3.append(i4);
                sb3.append(") when blockSize is 0");
                Log.m37483w(TAG, sb3.toString());
            }
        } else if (i4 == this.selectedServiceNumber) {
            boolean z = false;
            while (this.serviceBlockPacket.bitsLeft() > 0) {
                int readBits4 = this.serviceBlockPacket.readBits(8);
                if (readBits4 == 16) {
                    int readBits5 = this.serviceBlockPacket.readBits(8);
                    if (readBits5 <= 31) {
                        handleC2Command(readBits5);
                    } else {
                        if (readBits5 <= 127) {
                            handleG2Character(readBits5);
                        } else if (readBits5 <= 159) {
                            handleC3Command(readBits5);
                        } else if (readBits5 <= 255) {
                            handleG3Character(readBits5);
                        } else {
                            StringBuilder sb4 = new StringBuilder(37);
                            sb4.append("Invalid extended command: ");
                            sb4.append(readBits5);
                            Log.m37483w(TAG, sb4.toString());
                        }
                        z = true;
                    }
                } else if (readBits4 <= 31) {
                    handleC0Command(readBits4);
                } else {
                    if (readBits4 <= 127) {
                        handleG0Character(readBits4);
                    } else if (readBits4 <= 159) {
                        handleC1Command(readBits4);
                    } else if (readBits4 <= 255) {
                        handleG1Character(readBits4);
                    } else {
                        StringBuilder sb5 = new StringBuilder(33);
                        sb5.append("Invalid base command: ");
                        sb5.append(readBits4);
                        Log.m37483w(TAG, sb5.toString());
                    }
                    z = true;
                }
            }
            if (z) {
                this.cues = getDisplayCues();
            }
        }
    }

    private void resetCueBuilders() {
        for (int i = 0; i < 8; i++) {
            this.cueBuilders[i].reset();
        }
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle(list);
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public void decode(SubtitleInputBuffer subtitleInputBuffer) {
        this.ccData.reset(subtitleInputBuffer.data.array(), subtitleInputBuffer.data.limit());
        while (this.ccData.bytesLeft() >= 3) {
            int readUnsignedByte = this.ccData.readUnsignedByte() & 7;
            int i = readUnsignedByte & 3;
            boolean z = false;
            boolean z2 = (readUnsignedByte & 4) == 4;
            byte readUnsignedByte2 = (byte) this.ccData.readUnsignedByte();
            byte readUnsignedByte3 = (byte) this.ccData.readUnsignedByte();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        finalizeCurrentPacket();
                        int i2 = readUnsignedByte2 & 63;
                        int i3 = i2;
                        if (i2 == 0) {
                            i3 = 64;
                        }
                        this.currentDtvCcPacket = new DtvCcPacket((readUnsignedByte2 & 192) >> 6, i3);
                        DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
                        byte[] bArr = dtvCcPacket.packetData;
                        int i4 = dtvCcPacket.currentIndex;
                        dtvCcPacket.currentIndex = i4 + 1;
                        bArr[i4] = readUnsignedByte3;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        Assertions.checkArgument(z);
                        DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
                        if (dtvCcPacket2 == null) {
                            Log.m37487e(TAG, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = dtvCcPacket2.packetData;
                            int i5 = dtvCcPacket2.currentIndex;
                            dtvCcPacket2.currentIndex = i5 + 1;
                            bArr2[i5] = readUnsignedByte2;
                            int i6 = dtvCcPacket2.currentIndex;
                            dtvCcPacket2.currentIndex = i6 + 1;
                            bArr2[i6] = readUnsignedByte3;
                        }
                    }
                    DtvCcPacket dtvCcPacket3 = this.currentDtvCcPacket;
                    if (dtvCcPacket3.currentIndex == (dtvCcPacket3.packetSize * 2) - 1) {
                        finalizeCurrentPacket();
                    }
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        this.currentWindow = 0;
        this.currentCueBuilder = this.cueBuilders[this.currentWindow];
        resetCueBuilders();
        this.currentDtvCcPacket = null;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public String getName() {
        return TAG;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }
}
