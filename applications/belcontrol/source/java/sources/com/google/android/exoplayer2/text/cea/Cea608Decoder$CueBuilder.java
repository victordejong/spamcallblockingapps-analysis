package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.Cue;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder.class */
public class Cea608Decoder$CueBuilder {
    private static final int BASE_ROW = 15;
    private static final int SCREEN_CHARWIDTH = 32;
    private int captionMode;
    private int captionRowCount;
    private int indent;
    private int row;
    private int tabOffset;
    private final List<CueStyle> cueStyles = new ArrayList();
    private final List<SpannableString> rolledUpCaptions = new ArrayList();
    private final StringBuilder captionStringBuilder = new StringBuilder();

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle.class */
    public static class CueStyle {
        public int start;
        public final int style;
        public final boolean underline;

        public CueStyle(int i, boolean z, int i2) {
            this.style = i;
            this.underline = z;
            this.start = i2;
        }
    }

    public Cea608Decoder$CueBuilder(int i, int i2) {
        reset(i);
        setCaptionRowCount(i2);
    }

    private static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
        if (i3 == -1) {
            return;
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
    }

    private static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
    }

    private static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
    }

    public void append(char c) {
        this.captionStringBuilder.append(c);
    }

    public void backspace() {
        CueStyle cueStyle;
        int i;
        int length = this.captionStringBuilder.length();
        if (length > 0) {
            this.captionStringBuilder.delete(length - 1, length);
            for (int size = this.cueStyles.size() - 1; size >= 0 && (i = (cueStyle = this.cueStyles.get(size)).start) == length; size--) {
                cueStyle.start = i - 1;
            }
        }
    }

    public Cue build() {
        float f;
        int i;
        int i2;
        int i3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i4 = 0; i4 < this.rolledUpCaptions.size(); i4++) {
            spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i4));
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append((CharSequence) buildSpannableString());
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int i5 = this.indent + this.tabOffset;
        int length = (32 - i5) - spannableStringBuilder.length();
        int i6 = i5 - length;
        if (this.captionMode == 2 && (Math.abs(i6) < 3 || length < 0)) {
            f = 0.5f;
            i = 1;
        } else if (this.captionMode != 2 || i6 <= 0) {
            f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            i = 0;
        } else {
            f = (((32 - length) / 32.0f) * 0.8f) + 0.1f;
            i = 2;
        }
        if (this.captionMode != 1) {
            i3 = this.row;
            if (i3 <= 7) {
                i2 = 0;
                return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
            }
        }
        i3 = (this.row - 15) - 2;
        i2 = 2;
        return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
    }

    public SpannableString buildSpannableString() {
        int i;
        int i2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
        int length = spannableStringBuilder.length();
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        int i7 = -1;
        int i8 = -1;
        boolean z = false;
        while (i3 < this.cueStyles.size()) {
            CueStyle cueStyle = this.cueStyles.get(i3);
            boolean z2 = cueStyle.underline;
            int i9 = cueStyle.style;
            int i10 = i8;
            boolean z3 = z;
            if (i9 != 8) {
                boolean z4 = i9 == 7;
                if (i9 != 7) {
                    i8 = Cea608Decoder.access$000()[i9];
                }
                z3 = z4;
                i10 = i8;
            }
            int i11 = cueStyle.start;
            int i12 = i3 + 1;
            if (i11 == (i12 < this.cueStyles.size() ? this.cueStyles.get(i12).start : length)) {
                i3 = i12;
                i8 = i10;
                z = z3;
            } else {
                if (i4 == -1 || z2) {
                    i = i4;
                    if (i4 == -1) {
                        i = i4;
                        if (z2) {
                            i = i11;
                        }
                    }
                } else {
                    setUnderlineSpan(spannableStringBuilder, i4, i11);
                    i = -1;
                }
                if (i5 == -1 || z3) {
                    i2 = i5;
                    if (i5 == -1) {
                        i2 = i5;
                        if (z3) {
                            i2 = i11;
                        }
                    }
                } else {
                    setItalicSpan(spannableStringBuilder, i5, i11);
                    i2 = -1;
                }
                i3 = i12;
                i4 = i;
                i5 = i2;
                i8 = i10;
                z = z3;
                if (i10 != i7) {
                    setColorSpan(spannableStringBuilder, i6, i11, i7);
                    i7 = i10;
                    i3 = i12;
                    i4 = i;
                    i5 = i2;
                    i6 = i11;
                    i8 = i10;
                    z = z3;
                }
            }
        }
        if (i4 != -1 && i4 != length) {
            setUnderlineSpan(spannableStringBuilder, i4, length);
        }
        if (i5 != -1 && i5 != length) {
            setItalicSpan(spannableStringBuilder, i5, length);
        }
        if (i6 != length) {
            setColorSpan(spannableStringBuilder, i6, length, i7);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public int getRow() {
        return this.row;
    }

    public boolean isEmpty() {
        return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
    }

    public void reset(int i) {
        this.captionMode = i;
        this.cueStyles.clear();
        this.rolledUpCaptions.clear();
        this.captionStringBuilder.setLength(0);
        this.row = 15;
        this.indent = 0;
        this.tabOffset = 0;
    }

    public void rollUp() {
        this.rolledUpCaptions.add(buildSpannableString());
        this.captionStringBuilder.setLength(0);
        this.cueStyles.clear();
        int min = Math.min(this.captionRowCount, this.row);
        while (this.rolledUpCaptions.size() >= min) {
            this.rolledUpCaptions.remove(0);
        }
    }

    public void setCaptionRowCount(int i) {
        this.captionRowCount = i;
    }

    public void setIndent(int i) {
        this.indent = i;
    }

    public void setRow(int i) {
        this.row = i;
    }

    public void setStyle(int i, boolean z) {
        this.cueStyles.add(new CueStyle(i, z, this.captionStringBuilder.length()));
    }

    public void setTab(int i) {
        this.tabOffset = i;
    }

    public String toString() {
        return this.captionStringBuilder.toString();
    }
}
