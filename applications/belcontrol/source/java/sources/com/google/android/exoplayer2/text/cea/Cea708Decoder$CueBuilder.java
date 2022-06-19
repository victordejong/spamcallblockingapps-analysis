package com.google.android.exoplayer2.text.cea;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder.class */
public final class Cea708Decoder$CueBuilder {
    private static final int BORDER_AND_EDGE_TYPE_NONE = 0;
    private static final int BORDER_AND_EDGE_TYPE_UNIFORM = 3;
    public static final int COLOR_SOLID_BLACK;
    public static final int COLOR_TRANSPARENT;
    private static final int DEFAULT_PRIORITY = 4;
    private static final int DIRECTION_BOTTOM_TO_TOP = 3;
    private static final int DIRECTION_LEFT_TO_RIGHT = 0;
    private static final int DIRECTION_RIGHT_TO_LEFT = 1;
    private static final int DIRECTION_TOP_TO_BOTTOM = 2;
    private static final int HORIZONTAL_SIZE = 209;
    private static final int JUSTIFICATION_CENTER = 2;
    private static final int JUSTIFICATION_FULL = 3;
    private static final int JUSTIFICATION_LEFT = 0;
    private static final int JUSTIFICATION_RIGHT = 1;
    private static final int MAXIMUM_ROW_COUNT = 15;
    private static final int PEN_FONT_STYLE_DEFAULT = 0;
    private static final int PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS = 3;
    private static final int PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS = 1;
    private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS = 4;
    private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS = 2;
    private static final int PEN_OFFSET_NORMAL = 1;
    private static final int PEN_SIZE_STANDARD = 1;
    private static final int[] PEN_STYLE_BACKGROUND;
    private static final int RELATIVE_CUE_SIZE = 99;
    private static final int VERTICAL_SIZE = 74;
    private static final int[] WINDOW_STYLE_FILL;
    private int anchorId;
    private int backgroundColor;
    private int backgroundColorStartPosition;
    private boolean defined;
    private int foregroundColor;
    private int foregroundColorStartPosition;
    private int horizontalAnchor;
    private int italicsStartPosition;
    private int justification;
    private int penStyleId;
    private int priority;
    private boolean relativePositioning;
    private int row;
    private int rowCount;
    private boolean rowLock;
    private int underlineStartPosition;
    private int verticalAnchor;
    private boolean visible;
    private int windowFillColor;
    private int windowStyleId;
    public static final int COLOR_SOLID_WHITE = getArgbColorFromCeaColor(2, 2, 2, 0);
    private static final int[] WINDOW_STYLE_JUSTIFICATION = {0, 0, 0, 0, 0, 2, 0};
    private static final int[] WINDOW_STYLE_PRINT_DIRECTION = {0, 0, 0, 0, 0, 0, 2};
    private static final int[] WINDOW_STYLE_SCROLL_DIRECTION = {3, 3, 3, 3, 3, 3, 1};
    private static final boolean[] WINDOW_STYLE_WORD_WRAP = {false, false, false, true, true, true, false};
    private static final int[] PEN_STYLE_FONT_STYLE = {0, 1, 2, 3, 4, 3, 4};
    private static final int[] PEN_STYLE_EDGE_TYPE = {0, 0, 0, 0, 0, 3, 3};
    private final List<SpannableString> rolledUpCaptions = new ArrayList();
    private final SpannableStringBuilder captionStringBuilder = new SpannableStringBuilder();

    static {
        int argbColorFromCeaColor = getArgbColorFromCeaColor(0, 0, 0, 0);
        COLOR_SOLID_BLACK = argbColorFromCeaColor;
        int argbColorFromCeaColor2 = getArgbColorFromCeaColor(0, 0, 0, 3);
        COLOR_TRANSPARENT = argbColorFromCeaColor2;
        WINDOW_STYLE_FILL = new int[]{argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor};
        PEN_STYLE_BACKGROUND = new int[]{argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor2};
    }

    public Cea708Decoder$CueBuilder() {
        reset();
    }

    public static int getArgbColorFromCeaColor(int i, int i2, int i3) {
        return getArgbColorFromCeaColor(i, i2, i3, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
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
            int r0 = com.google.android.exoplayer2.util.Assertions.checkIndex(r0, r1, r2)
            r0 = r6
            r1 = 0
            r2 = 4
            int r0 = com.google.android.exoplayer2.util.Assertions.checkIndex(r0, r1, r2)
            r0 = r7
            r1 = 0
            r2 = 4
            int r0 = com.google.android.exoplayer2.util.Assertions.checkIndex(r0, r1, r2)
            r0 = r8
            r1 = 0
            r2 = 4
            int r0 = com.google.android.exoplayer2.util.Assertions.checkIndex(r0, r1, r2)
            r0 = r8
            if (r0 == 0) goto L40
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L40
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L3a
            r0 = r8
            r1 = 3
            if (r0 == r1) goto L35
            goto L40
        L35:
            r0 = 0
            r8 = r0
            goto L44
        L3a:
            r0 = 127(0x7f, float:1.78E-43)
            r8 = r0
            goto L44
        L40:
            r0 = 255(0xff, float:3.57E-43)
            r8 = r0
        L44:
            r0 = r5
            r1 = 1
            if (r0 <= r1) goto L50
            r0 = 255(0xff, float:3.57E-43)
            r5 = r0
            goto L52
        L50:
            r0 = 0
            r5 = r0
        L52:
            r0 = r6
            r1 = 1
            if (r0 <= r1) goto L5e
            r0 = 255(0xff, float:3.57E-43)
            r6 = r0
            goto L60
        L5e:
            r0 = 0
            r6 = r0
        L60:
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L6a
            r0 = 255(0xff, float:3.57E-43)
            r9 = r0
        L6a:
            r0 = r8
            r1 = r5
            r2 = r6
            r3 = r9
            int r0 = android.graphics.Color.argb(r0, r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder$CueBuilder.getArgbColorFromCeaColor(int, int, int, int):int");
    }

    public void append(char c) {
        if (c != '\n') {
            this.captionStringBuilder.append(c);
            return;
        }
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
            if ((!this.rowLock || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                return;
            }
            this.rolledUpCaptions.remove(0);
        }
    }

    public void backspace() {
        int length = this.captionStringBuilder.length();
        if (length > 0) {
            this.captionStringBuilder.delete(length - 1, length);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.text.cea.Cea708Cue build() {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder$CueBuilder.build():com.google.android.exoplayer2.text.cea.Cea708Cue");
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
        if (i7 != 0 && this.windowStyleId != i7) {
            this.windowStyleId = i7;
            int i10 = i7 - 1;
            setWindowAttributes(WINDOW_STYLE_FILL[i10], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i10], 0, WINDOW_STYLE_PRINT_DIRECTION[i10], WINDOW_STYLE_SCROLL_DIRECTION[i10], WINDOW_STYLE_JUSTIFICATION[i10]);
        }
        if (i8 == 0 || this.penStyleId == i8) {
            return;
        }
        this.penStyleId = i8;
        int i11 = i8 - 1;
        setPenAttributes(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i11], PEN_STYLE_FONT_STYLE[i11]);
        setPenColor(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i11], COLOR_SOLID_BLACK);
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
        if (this.underlineStartPosition == -1) {
            if (!z2) {
                return;
            }
            this.underlineStartPosition = this.captionStringBuilder.length();
        } else if (z2) {
        } else {
            this.captionStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
            this.underlineStartPosition = -1;
        }
    }

    public void setPenColor(int i, int i2, int i3) {
        if (this.foregroundColorStartPosition != -1 && this.foregroundColor != i) {
            this.captionStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
        }
        if (i != COLOR_SOLID_WHITE) {
            this.foregroundColorStartPosition = this.captionStringBuilder.length();
            this.foregroundColor = i;
        }
        if (this.backgroundColorStartPosition != -1 && this.backgroundColor != i2) {
            this.captionStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
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
