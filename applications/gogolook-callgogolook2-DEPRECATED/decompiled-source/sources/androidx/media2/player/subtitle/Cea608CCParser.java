package androidx.media2.player.subtitle;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import android.view.accessibility.CaptioningManager;
import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser.class */
public class Cea608CCParser {
    public static final int AOF = 34;
    public static final int AON = 35;

    /* renamed from: BS */
    public static final int f107BS = 33;

    /* renamed from: CR */
    public static final int f108CR = 45;
    public static final boolean DEBUG = Log.isLoggable("Cea608CCParser", 3);
    public static final int DER = 36;
    public static final int EDM = 44;
    public static final int ENM = 46;
    public static final int EOC = 47;
    public static final int FON = 40;
    public static final int INVALID = -1;
    public static final int MAX_COLS = 32;
    public static final int MAX_ROWS = 15;
    public static final int MODE_PAINT_ON = 1;
    public static final int MODE_POP_ON = 3;
    public static final int MODE_ROLL_UP = 2;
    public static final int MODE_TEXT = 4;
    public static final int MODE_UNKNOWN = 0;
    public static final int RCL = 32;
    public static final int RDC = 41;
    public static final int RTD = 43;
    public static final int RU2 = 37;
    public static final int RU3 = 38;
    public static final int RU4 = 39;
    public static final String TAG = "Cea608CCParser";

    /* renamed from: TR */
    public static final int f109TR = 42;

    /* renamed from: TS */
    public static final char f110TS = 160;
    public final DisplayListener mListener;
    public int mMode = 1;
    public int mRollUpSize = 4;
    public int mPrevCtrlCode = -1;
    public CCMemory mDisplay = new CCMemory();
    public CCMemory mNonDisplay = new CCMemory();
    public CCMemory mTextMem = new CCMemory();

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$CCData.class */
    public static class CCData {
        public final byte mData1;
        public final byte mData2;
        public final byte mType;
        public static final String[] sCtrlCodeMap = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};
        public static final String[] sSpecialCharMap = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};
        public static final String[] sSpanishCharMap = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", "*", "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};
        public static final String[] sProtugueseCharMap = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", CssParser.BLOCK_START, CssParser.BLOCK_END, "\\", "^", "_", "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        public CCData(byte b, byte b2, byte b3) {
            this.mType = b;
            this.mData1 = b2;
            this.mData2 = b3;
        }

        private String ctrlCodeToString(int i) {
            return sCtrlCodeMap[i - 32];
        }

        public static CCData[] fromByteArray(byte[] bArr) {
            CCData[] cCDataArr = new CCData[bArr.length / 3];
            for (int i = 0; i < cCDataArr.length; i++) {
                int i2 = i * 3;
                cCDataArr[i] = new CCData(bArr[i2], bArr[i2 + 1], bArr[i2 + 2]);
            }
            return cCDataArr;
        }

        private char getBasicChar(byte b) {
            char c;
            if (b == 42) {
                c = 225;
            } else if (b != 92) {
                switch (b) {
                    case 94:
                        c = 237;
                        break;
                    case 95:
                        c = 243;
                        break;
                    case 96:
                        c = 250;
                        break;
                    default:
                        switch (b) {
                            case 123:
                                c = 231;
                                break;
                            case 124:
                                c = 247;
                                break;
                            case 125:
                                c = 209;
                                break;
                            case Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER /* 126 */:
                                c = 241;
                                break;
                            case Byte.MAX_VALUE:
                                c = 9608;
                                break;
                            default:
                                c = (char) b;
                                break;
                        }
                }
            } else {
                c = 233;
            }
            return c;
        }

        private String getBasicChars() {
            byte b = this.mData1;
            if (b < 32 || b > Byte.MAX_VALUE) {
                return null;
            }
            StringBuilder sb = new StringBuilder(2);
            sb.append(getBasicChar(this.mData1));
            byte b2 = this.mData2;
            if (b2 >= 32 && b2 <= Byte.MAX_VALUE) {
                sb.append(getBasicChar(b2));
            }
            return sb.toString();
        }

        private String getExtendedChar() {
            byte b;
            byte b2;
            byte b3 = this.mData1;
            if ((b3 == 18 || b3 == 26) && (b2 = this.mData2) >= 32 && b2 <= 63) {
                return sSpanishCharMap[b2 - 32];
            }
            byte b4 = this.mData1;
            if ((b4 == 19 || b4 == 27) && (b = this.mData2) >= 32 && b <= 63) {
                return sProtugueseCharMap[b - 32];
            }
            return null;
        }

        private String getSpecialChar() {
            byte b;
            byte b2 = this.mData1;
            if ((b2 == 17 || b2 == 25) && (b = this.mData2) >= 48 && b <= 63) {
                return sSpecialCharMap[b - 48];
            }
            return null;
        }

        private boolean isBasicChar() {
            byte b = this.mData1;
            return b >= 32 && b <= Byte.MAX_VALUE;
        }

        private boolean isSpecialChar() {
            byte b;
            byte b2 = this.mData1;
            return (b2 == 17 || b2 == 25) && (b = this.mData2) >= 48 && b <= 63;
        }

        public int getCtrlCode() {
            byte b;
            byte b2 = this.mData1;
            if ((b2 == 20 || b2 == 28) && (b = this.mData2) >= 32 && b <= 47) {
                return b;
            }
            return -1;
        }

        public String getDisplayText() {
            String basicChars = getBasicChars();
            String str = basicChars;
            if (basicChars == null) {
                String specialChar = getSpecialChar();
                str = specialChar;
                if (specialChar == null) {
                    str = getExtendedChar();
                }
            }
            return str;
        }

        public StyleCode getMidRow() {
            byte b;
            byte b2 = this.mData1;
            if ((b2 == 17 || b2 == 25) && (b = this.mData2) >= 32 && b <= 47) {
                return StyleCode.fromByte(b);
            }
            return null;
        }

        public PAC getPAC() {
            byte b = this.mData1;
            if ((b & 112) != 16) {
                return null;
            }
            byte b2 = this.mData2;
            if ((b2 & 64) != 64) {
                return null;
            }
            if ((b & 7) != 0 || (b2 & 32) == 0) {
                return PAC.fromBytes(this.mData1, this.mData2);
            }
            return null;
        }

        public int getTabOffset() {
            byte b;
            byte b2 = this.mData1;
            if ((b2 == 23 || b2 == 31) && (b = this.mData2) >= 33 && b <= 35) {
                return b & 3;
            }
            return 0;
        }

        public boolean isDisplayableChar() {
            return isBasicChar() || isSpecialChar() || isExtendedChar();
        }

        public boolean isExtendedChar() {
            byte b;
            byte b2 = this.mData1;
            return (b2 == 18 || b2 == 26 || b2 == 19 || b2 == 27) && (b = this.mData2) >= 32 && b <= 63;
        }

        public String toString() {
            if (this.mData1 < 16 && this.mData2 < 16) {
                return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.mType), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2));
            }
            int ctrlCode = getCtrlCode();
            if (ctrlCode != -1) {
                return String.format("[%d]%s", Byte.valueOf(this.mType), ctrlCodeToString(ctrlCode));
            }
            int tabOffset = getTabOffset();
            if (tabOffset > 0) {
                return String.format("[%d]Tab%d", Byte.valueOf(this.mType), Integer.valueOf(tabOffset));
            }
            PAC pac = getPAC();
            if (pac != null) {
                return String.format("[%d]PAC: %s", Byte.valueOf(this.mType), pac.toString());
            }
            StyleCode midRow = getMidRow();
            return midRow != null ? String.format("[%d]Mid-row: %s", Byte.valueOf(this.mType), midRow.toString()) : isDisplayableChar() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.mType), getDisplayText(), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.mType), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$CCLineBuilder.class */
    public static class CCLineBuilder {
        public final StringBuilder mDisplayChars;
        public final StyleCode[] mMidRowStyles;
        public final StyleCode[] mPACStyles;

        public CCLineBuilder(String str) {
            this.mDisplayChars = new StringBuilder(str);
            this.mMidRowStyles = new StyleCode[this.mDisplayChars.length()];
            this.mPACStyles = new StyleCode[this.mDisplayChars.length()];
        }

        public void applyStyleSpan(SpannableStringBuilder spannableStringBuilder, StyleCode styleCode, int i, int i2) {
            if (styleCode.isItalics()) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
            }
            if (styleCode.isUnderline()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }

        public char charAt(int i) {
            return this.mDisplayChars.charAt(i);
        }

        public SpannableStringBuilder getStyledText(CaptioningManager.CaptionStyle captionStyle) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.mDisplayChars);
            int i = 0;
            StyleCode styleCode = null;
            int i2 = -1;
            int i3 = -1;
            while (i < this.mDisplayChars.length()) {
                StyleCode[] styleCodeArr = this.mMidRowStyles;
                StyleCode styleCode2 = styleCodeArr[i] != null ? styleCodeArr[i] : (this.mPACStyles[i] == null || (i2 >= 0 && i3 >= 0)) ? null : this.mPACStyles[i];
                int i4 = i2;
                if (styleCode2 != null) {
                    if (i2 >= 0 && i3 >= 0) {
                        applyStyleSpan(spannableStringBuilder, styleCode2, i2, i);
                    }
                    i4 = i;
                    styleCode = styleCode2;
                }
                if (this.mDisplayChars.charAt(i) != 160) {
                    i3 = i3;
                    if (i3 < 0) {
                        i3 = i;
                    }
                } else {
                    i3 = i3;
                    if (i3 >= 0) {
                        if (this.mDisplayChars.charAt(i3) != ' ') {
                            i3--;
                        }
                        int i5 = this.mDisplayChars.charAt(i - 1) == ' ' ? i : i + 1;
                        spannableStringBuilder.setSpan(new MutableBackgroundColorSpan(captionStyle.backgroundColor), i3, i5, 33);
                        if (i4 >= 0) {
                            applyStyleSpan(spannableStringBuilder, styleCode, i4, i5);
                        }
                        i3 = -1;
                    }
                }
                i++;
                i2 = i4;
            }
            return spannableStringBuilder;
        }

        public int length() {
            return this.mDisplayChars.length();
        }

        public void setCharAt(int i, char c) {
            this.mDisplayChars.setCharAt(i, c);
            this.mMidRowStyles[i] = null;
        }

        public void setMidRowAt(int i, StyleCode styleCode) {
            this.mDisplayChars.setCharAt(i, ' ');
            this.mMidRowStyles[i] = styleCode;
        }

        public void setPACAt(int i, PAC pac) {
            this.mPACStyles[i] = pac;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$CCMemory.class */
    public static class CCMemory {
        public final String mBlankLine;
        public int mCol;
        public final CCLineBuilder[] mLines = new CCLineBuilder[17];
        public int mRow;

        public CCMemory() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, (char) 160);
            this.mBlankLine = new String(cArr);
        }

        public static int clamp(int i, int i2, int i3) {
            if (i >= i2) {
                i2 = i;
                if (i > i3) {
                    i2 = i3;
                }
            }
            return i2;
        }

        private CCLineBuilder getLineBuffer(int i) {
            CCLineBuilder[] cCLineBuilderArr = this.mLines;
            if (cCLineBuilderArr[i] == null) {
                cCLineBuilderArr[i] = new CCLineBuilder(this.mBlankLine);
            }
            return this.mLines[i];
        }

        private void moveCursorByCol(int i) {
            this.mCol = clamp(this.mCol + i, 1, 32);
        }

        private void moveCursorTo(int i, int i2) {
            this.mRow = clamp(i, 1, 15);
            this.mCol = clamp(i2, 1, 32);
        }

        private void moveCursorToRow(int i) {
            this.mRow = clamp(i, 1, 15);
        }

        /* renamed from: bs */
        public void m37476bs() {
            moveCursorByCol(-1);
            CCLineBuilder[] cCLineBuilderArr = this.mLines;
            int i = this.mRow;
            if (cCLineBuilderArr[i] != null) {
                cCLineBuilderArr[i].setCharAt(this.mCol, (char) 160);
                if (this.mCol == 31) {
                    this.mLines[this.mRow].setCharAt(32, (char) 160);
                }
            }
        }

        /* renamed from: cr */
        public void m37475cr() {
            moveCursorTo(this.mRow + 1, 1);
        }

        public void der() {
            if (this.mLines[this.mRow] != null) {
                for (int i = 0; i < this.mCol; i++) {
                    if (this.mLines[this.mRow].charAt(i) != 160) {
                        for (int i2 = this.mCol; i2 < this.mLines[this.mRow].length(); i2++) {
                            this.mLines[i2].setCharAt(i2, (char) 160);
                        }
                        return;
                    }
                }
                this.mLines[this.mRow] = null;
            }
        }

        public void erase() {
            int i = 0;
            while (true) {
                CCLineBuilder[] cCLineBuilderArr = this.mLines;
                if (i < cCLineBuilderArr.length) {
                    cCLineBuilderArr[i] = null;
                    i++;
                } else {
                    this.mRow = 15;
                    this.mCol = 1;
                    return;
                }
            }
        }

        public SpannableStringBuilder[] getStyledText(CaptioningManager.CaptionStyle captionStyle) {
            ArrayList arrayList = new ArrayList(15);
            for (int i = 1; i <= 15; i++) {
                CCLineBuilder[] cCLineBuilderArr = this.mLines;
                arrayList.add(cCLineBuilderArr[i] != null ? cCLineBuilderArr[i].getStyledText(captionStyle) : null);
            }
            return (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
        }

        public void moveBaselineTo(int i, int i2) {
            int i3;
            int i4;
            if (this.mRow != i) {
                int i5 = i < i2 ? i : i2;
                int i6 = this.mRow;
                int i7 = i5;
                if (i6 < i5) {
                    i7 = i6;
                }
                if (i >= this.mRow) {
                    int i8 = 0;
                    while (true) {
                        i3 = 0;
                        if (i8 >= i7) {
                            break;
                        }
                        CCLineBuilder[] cCLineBuilderArr = this.mLines;
                        cCLineBuilderArr[i - i8] = cCLineBuilderArr[this.mRow - i8];
                        i8++;
                    }
                } else {
                    while (true) {
                        i7--;
                        i3 = 0;
                        if (i7 < 0) {
                            break;
                        }
                        CCLineBuilder[] cCLineBuilderArr2 = this.mLines;
                        cCLineBuilderArr2[i - i7] = cCLineBuilderArr2[this.mRow - i7];
                    }
                }
                while (true) {
                    i4 = i;
                    if (i3 <= i - i2) {
                        this.mLines[i3] = null;
                        i3++;
                    }
                }
                while (true) {
                    i4++;
                    CCLineBuilder[] cCLineBuilderArr3 = this.mLines;
                    if (i4 < cCLineBuilderArr3.length) {
                        cCLineBuilderArr3[i4] = null;
                    } else {
                        return;
                    }
                }
            }
        }

        public void rollUp(int i) {
            int i2;
            int i3;
            int i4 = 0;
            while (true) {
                i2 = this.mRow;
                if (i4 > i2 - i) {
                    break;
                }
                this.mLines[i4] = null;
                i4++;
            }
            int i5 = (i2 - i) + 1;
            int i6 = i5;
            if (i5 < 1) {
                i6 = 1;
            }
            while (true) {
                int i7 = this.mRow;
                i3 = i7;
                if (i6 < i7) {
                    CCLineBuilder[] cCLineBuilderArr = this.mLines;
                    int i8 = i6 + 1;
                    cCLineBuilderArr[i6] = cCLineBuilderArr[i8];
                    i6 = i8;
                }
            }
            while (true) {
                CCLineBuilder[] cCLineBuilderArr2 = this.mLines;
                if (i3 < cCLineBuilderArr2.length) {
                    cCLineBuilderArr2[i3] = null;
                    i3++;
                } else {
                    this.mCol = 1;
                    return;
                }
            }
        }

        public void tab(int i) {
            moveCursorByCol(i);
        }

        public void writeMidRowCode(StyleCode styleCode) {
            getLineBuffer(this.mRow).setMidRowAt(this.mCol, styleCode);
            moveCursorByCol(1);
        }

        public void writePAC(PAC pac) {
            if (pac.isIndentPAC()) {
                moveCursorTo(pac.getRow(), pac.getCol());
            } else {
                moveCursorTo(pac.getRow(), 1);
            }
            getLineBuffer(this.mRow).setPACAt(this.mCol, pac);
        }

        public void writeText(String str) {
            for (int i = 0; i < str.length(); i++) {
                getLineBuffer(this.mRow).setCharAt(this.mCol, str.charAt(i));
                moveCursorByCol(1);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$DisplayListener.class */
    public interface DisplayListener {
        CaptioningManager.CaptionStyle getCaptionStyle();

        void onDisplayChanged(SpannableStringBuilder[] spannableStringBuilderArr);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$MutableBackgroundColorSpan.class */
    public static class MutableBackgroundColorSpan extends CharacterStyle implements UpdateAppearance {
        public int mColor;

        public MutableBackgroundColorSpan(int i) {
            this.mColor = i;
        }

        public int getBackgroundColor() {
            return this.mColor;
        }

        public void setBackgroundColor(int i) {
            this.mColor = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.mColor;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$PAC.class */
    public static class PAC extends StyleCode {
        public final int mCol;
        public final int mRow;

        public PAC(int i, int i2, int i3, int i4) {
            super(i3, i4);
            this.mRow = i;
            this.mCol = i2;
        }

        public static PAC fromBytes(byte b, byte b2) {
            int i = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b & 7] + ((b2 & 32) >> 5);
            int i2 = (b2 & 1) != 0 ? 2 : 0;
            if ((b2 & 16) != 0) {
                return new PAC(i, ((b2 >> 1) & 7) * 4, i2, 0);
            }
            int i3 = (b2 >> 1) & 7;
            int i4 = i2;
            int i5 = i3;
            if (i3 == 7) {
                i4 = i2 | 1;
                i5 = 0;
            }
            return new PAC(i, -1, i4, i5);
        }

        public int getCol() {
            return this.mCol;
        }

        public int getRow() {
            return this.mRow;
        }

        public boolean isIndentPAC() {
            return this.mCol >= 0;
        }

        @Override // androidx.media2.player.subtitle.Cea608CCParser.StyleCode
        public String toString() {
            return String.format("{%d, %d}, %s", Integer.valueOf(this.mRow), Integer.valueOf(this.mCol), super.toString());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/Cea608CCParser$StyleCode.class */
    public static class StyleCode {
        public static final int COLOR_BLUE = 2;
        public static final int COLOR_CYAN = 3;
        public static final int COLOR_GREEN = 1;
        public static final int COLOR_INVALID = 7;
        public static final int COLOR_MAGENTA = 6;
        public static final int COLOR_RED = 4;
        public static final int COLOR_WHITE = 0;
        public static final int COLOR_YELLOW = 5;
        public static final int STYLE_ITALICS = 1;
        public static final int STYLE_UNDERLINE = 2;
        public static final String[] sColorMap = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};
        public final int mColor;
        public final int mStyle;

        public StyleCode(int i, int i2) {
            this.mStyle = i;
            this.mColor = i2;
        }

        public static StyleCode fromByte(byte b) {
            int i = (b >> 1) & 7;
            int i2 = (b & 1) != 0 ? 2 : 0;
            int i3 = i;
            int i4 = i2;
            if (i == 7) {
                i4 = i2 | 1;
                i3 = 0;
            }
            return new StyleCode(i4, i3);
        }

        public int getColor() {
            return this.mColor;
        }

        public boolean isItalics() {
            boolean z = true;
            if ((this.mStyle & 1) == 0) {
                z = false;
            }
            return z;
        }

        public boolean isUnderline() {
            return (this.mStyle & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(CssParser.BLOCK_START);
            sb.append(sColorMap[this.mColor]);
            if ((this.mStyle & 1) != 0) {
                sb.append(", ITALICS");
            }
            if ((this.mStyle & 2) != 0) {
                sb.append(", UNDERLINE");
            }
            sb.append(CssParser.BLOCK_END);
            return sb.toString();
        }
    }

    public Cea608CCParser(DisplayListener displayListener) {
        this.mListener = displayListener;
    }

    private CCMemory getMemory() {
        int i = this.mMode;
        if (i == 1 || i == 2) {
            return this.mDisplay;
        }
        if (i == 3) {
            return this.mNonDisplay;
        }
        if (i == 4) {
            return this.mTextMem;
        }
        String str = "unrecoginized mode: " + this.mMode;
        return this.mDisplay;
    }

    private boolean handleCtrlCode(CCData cCData) {
        int ctrlCode = cCData.getCtrlCode();
        int i = this.mPrevCtrlCode;
        if (i == -1 || i != ctrlCode) {
            switch (ctrlCode) {
                case 32:
                    this.mMode = 3;
                    break;
                case 33:
                    getMemory().m37476bs();
                    break;
                case 34:
                case 35:
                default:
                    this.mPrevCtrlCode = -1;
                    return false;
                case 36:
                    getMemory().der();
                    break;
                case 37:
                case 38:
                case 39:
                    this.mRollUpSize = ctrlCode - 35;
                    if (this.mMode != 2) {
                        this.mDisplay.erase();
                        this.mNonDisplay.erase();
                    }
                    this.mMode = 2;
                    break;
                case 40:
                    break;
                case 41:
                    this.mMode = 1;
                    break;
                case 42:
                    this.mMode = 4;
                    this.mTextMem.erase();
                    break;
                case 43:
                    this.mMode = 4;
                    break;
                case 44:
                    this.mDisplay.erase();
                    updateDisplay();
                    break;
                case 45:
                    if (this.mMode == 2) {
                        getMemory().rollUp(this.mRollUpSize);
                    } else {
                        getMemory().m37475cr();
                    }
                    if (this.mMode == 2) {
                        updateDisplay();
                        break;
                    }
                    break;
                case 46:
                    this.mNonDisplay.erase();
                    break;
                case 47:
                    swapMemory();
                    this.mMode = 3;
                    updateDisplay();
                    break;
            }
            this.mPrevCtrlCode = ctrlCode;
            return true;
        }
        this.mPrevCtrlCode = -1;
        return true;
    }

    private boolean handleDisplayableChars(CCData cCData) {
        if (!cCData.isDisplayableChar()) {
            return false;
        }
        if (cCData.isExtendedChar()) {
            getMemory().m37476bs();
        }
        getMemory().writeText(cCData.getDisplayText());
        int i = this.mMode;
        if (i != 1 && i != 2) {
            return true;
        }
        updateDisplay();
        return true;
    }

    private boolean handleMidRowCode(CCData cCData) {
        StyleCode midRow = cCData.getMidRow();
        if (midRow == null) {
            return false;
        }
        getMemory().writeMidRowCode(midRow);
        return true;
    }

    private boolean handlePACCode(CCData cCData) {
        PAC pac = cCData.getPAC();
        if (pac == null) {
            return false;
        }
        if (this.mMode == 2) {
            getMemory().moveBaselineTo(pac.getRow(), this.mRollUpSize);
        }
        getMemory().writePAC(pac);
        return true;
    }

    private boolean handleTabOffsets(CCData cCData) {
        int tabOffset = cCData.getTabOffset();
        if (tabOffset <= 0) {
            return false;
        }
        getMemory().tab(tabOffset);
        return true;
    }

    private void swapMemory() {
        CCMemory cCMemory = this.mDisplay;
        this.mDisplay = this.mNonDisplay;
        this.mNonDisplay = cCMemory;
    }

    private void updateDisplay() {
        DisplayListener displayListener = this.mListener;
        if (displayListener != null) {
            this.mListener.onDisplayChanged(this.mDisplay.getStyledText(displayListener.getCaptionStyle()));
        }
    }

    public void parse(byte[] bArr) {
        CCData[] fromByteArray = CCData.fromByteArray(bArr);
        for (int i = 0; i < fromByteArray.length; i++) {
            if (DEBUG) {
                fromByteArray[i].toString();
            }
            if (!handleCtrlCode(fromByteArray[i]) && !handleTabOffsets(fromByteArray[i]) && !handlePACCode(fromByteArray[i]) && !handleMidRowCode(fromByteArray[i])) {
                handleDisplayableChars(fromByteArray[i]);
            }
        }
    }
}
