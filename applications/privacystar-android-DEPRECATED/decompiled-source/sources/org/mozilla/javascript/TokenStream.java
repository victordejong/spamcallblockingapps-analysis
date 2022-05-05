package org.mozilla.javascript;

import java.io.IOException;
import java.io.Reader;
import org.mozilla.javascript.Token;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/TokenStream.class */
public class TokenStream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final char BYTE_ORDER_MARK = 65279;
    private static final int EOF_CHAR = -1;
    Token.CommentType commentType;
    int cursor;
    private boolean dirtyLine;
    private boolean isHex;
    private boolean isOctal;
    int lineno;
    private double number;
    private Parser parser;
    private int quoteChar;
    String regExpFlags;
    private char[] sourceBuffer;
    int sourceCursor;
    private int sourceEnd;
    private Reader sourceReader;
    private String sourceString;
    private int stringBufferTop;
    int tokenBeg;
    int tokenEnd;
    private int ungetCursor;
    private boolean xmlIsAttribute;
    private boolean xmlIsTagContent;
    private int xmlOpenTagsCount;
    private String string = "";
    private char[] stringBuffer = new char[128];
    private ObjToIntMap allStrings = new ObjToIntMap(50);
    private final int[] ungetBuffer = new int[3];
    private boolean hitEOF = false;
    private int lineStart = 0;
    private int lineEndChar = -1;
    private String commentPrefix = "";
    private int commentCursor = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenStream(Parser parser, Reader reader, String str, int i) {
        this.parser = parser;
        this.lineno = i;
        if (reader != null) {
            if (str != null) {
                Kit.codeBug();
            }
            this.sourceReader = reader;
            this.sourceBuffer = new char[512];
            this.sourceEnd = 0;
        } else {
            if (str == null) {
                Kit.codeBug();
            }
            this.sourceString = str;
            this.sourceEnd = str.length();
        }
        this.cursor = 0;
        this.sourceCursor = 0;
    }

    private void addToString(int i) {
        int i2 = this.stringBufferTop;
        if (i2 == this.stringBuffer.length) {
            char[] cArr = new char[this.stringBuffer.length * 2];
            System.arraycopy(this.stringBuffer, 0, cArr, 0, i2);
            this.stringBuffer = cArr;
        }
        this.stringBuffer[i2] = (char) i;
        this.stringBufferTop = i2 + 1;
    }

    private boolean canUngetChar() {
        boolean z = true;
        if (this.ungetCursor != 0) {
            z = this.ungetBuffer[this.ungetCursor - 1] != 10;
        }
        return z;
    }

    private final int charAt(int i) {
        if (i < 0) {
            return -1;
        }
        if (this.sourceString == null) {
            int i2 = i;
            if (i >= this.sourceEnd) {
                int i3 = this.sourceCursor;
                try {
                    if (!fillSourceBuffer()) {
                        return -1;
                    }
                    i2 = i - (i3 - this.sourceCursor);
                } catch (IOException e) {
                    return -1;
                }
            }
            return this.sourceBuffer[i2];
        } else if (i >= this.sourceEnd) {
            return -1;
        } else {
            return this.sourceString.charAt(i);
        }
    }

    private String convertLastCharToHex(String str) {
        int length = str.length() - 1;
        StringBuffer stringBuffer = new StringBuffer(str.substring(0, length));
        stringBuffer.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i = 0; i < 4 - hexString.length(); i++) {
            stringBuffer.append('0');
        }
        stringBuffer.append(hexString);
        return stringBuffer.toString();
    }

    private boolean fillSourceBuffer() throws IOException {
        if (this.sourceString != null) {
            Kit.codeBug();
        }
        if (this.sourceEnd == this.sourceBuffer.length) {
            if (this.lineStart == 0 || isMarkingComment()) {
                char[] cArr = new char[this.sourceBuffer.length * 2];
                System.arraycopy(this.sourceBuffer, 0, cArr, 0, this.sourceEnd);
                this.sourceBuffer = cArr;
            } else {
                System.arraycopy(this.sourceBuffer, this.lineStart, this.sourceBuffer, 0, this.sourceEnd - this.lineStart);
                this.sourceEnd -= this.lineStart;
                this.sourceCursor -= this.lineStart;
                this.lineStart = 0;
            }
        }
        int read = this.sourceReader.read(this.sourceBuffer, this.sourceEnd, this.sourceBuffer.length - this.sourceEnd);
        if (read < 0) {
            return false;
        }
        this.sourceEnd += read;
        return true;
    }

    private int getChar() throws IOException {
        return getChar(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0112, code lost:
        if (org.mozilla.javascript.ScriptRuntime.isJSLineTerminator(r7) == false) goto L_0x0120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0115, code lost:
        r4.lineEndChar = r7;
        r7 = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0121, code lost:
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getChar(boolean r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getChar(boolean):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00de, code lost:
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getCharIgnoreLineEnd() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getCharIgnoreLineEnd():int");
    }

    private String getStringFromBuffer() {
        this.tokenEnd = this.cursor;
        return new String(this.stringBuffer, 0, this.stringBufferTop);
    }

    private static boolean isAlpha(int i) {
        boolean z = false;
        if (i <= 90) {
            if (65 <= i) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (97 <= i) {
            z2 = false;
            if (i <= 122) {
                z2 = true;
            }
        }
        return z2;
    }

    static boolean isDigit(int i) {
        return 48 <= i && i <= 57;
    }

    private static boolean isJSFormatChar(int i) {
        return i > 127 && Character.getType((char) i) == 16;
    }

    static boolean isJSSpace(int i) {
        if (i <= 127) {
            boolean z = true;
            if (i != 32) {
                z = true;
                if (i != 9) {
                    z = true;
                    if (i != 12) {
                        z = i == 11;
                    }
                }
            }
            return z;
        }
        boolean z2 = true;
        if (i != 160) {
            z2 = true;
            if (i != 65279) {
                z2 = Character.getType((char) i) == 12;
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isKeyword(String str) {
        return stringToKeyword(str) != 0;
    }

    private boolean isMarkingComment() {
        return this.commentCursor != -1;
    }

    private void markCommentStart() {
        markCommentStart("");
    }

    private void markCommentStart(String str) {
        if (this.parser.compilerEnv.isRecordingComments() && this.sourceReader != null) {
            this.commentPrefix = str;
            this.commentCursor = this.sourceCursor - 1;
        }
    }

    private boolean matchChar(int i) throws IOException {
        int charIgnoreLineEnd = getCharIgnoreLineEnd();
        if (charIgnoreLineEnd == i) {
            this.tokenEnd = this.cursor;
            return true;
        }
        ungetCharIgnoreLineEnd(charIgnoreLineEnd);
        return false;
    }

    private int peekChar() throws IOException {
        int i = getChar();
        ungetChar(i);
        return i;
    }

    private boolean readCDATA() throws IOException {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 93 && peekChar() == 93) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private boolean readEntity() throws IOException {
        int i = getChar();
        int i2 = 1;
        while (i != -1) {
            addToString(i);
            if (i == 60) {
                i2++;
            } else if (i != 62) {
                continue;
            } else {
                int i3 = i2 - 1;
                i2 = i3;
                if (i3 == 0) {
                    return true;
                }
            }
            i = getChar();
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private boolean readPI() throws IOException {
        while (true) {
            int i = getChar();
            if (i != -1) {
                addToString(i);
                if (i == 63 && peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
        }
    }

    private boolean readQuotedString(int i) throws IOException {
        int i2;
        do {
            i2 = getChar();
            if (i2 != -1) {
                addToString(i2);
            } else {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
        } while (i2 != i);
        return true;
    }

    private boolean readXmlComment() throws IOException {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 45 && peekChar() == 45) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private void skipLine() throws IOException {
        int i;
        do {
            i = getChar();
            if (i == -1) {
                break;
            }
        } while (i != 10);
        ungetChar(i);
        this.tokenEnd = this.cursor;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0416, code lost:
        if (r3.charAt(1) == 'n') goto L_0x0510;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0459, code lost:
        if (r3.charAt(1) == 'h') goto L_0x0510;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x050d, code lost:
        if (r3.charAt(1) == 'n') goto L_0x0510;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0510, code lost:
        r5 = 127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x056f, code lost:
        if (r3.charAt(0) == 'd') goto L_0x0592;
     */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x057f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int stringToKeyword(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 1438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.stringToKeyword(java.lang.String):int");
    }

    private final String substring(int i, int i2) {
        return this.sourceString != null ? this.sourceString.substring(i, i2) : new String(this.sourceBuffer, i, i2 - i);
    }

    private void ungetChar(int i) {
        if (this.ungetCursor != 0 && this.ungetBuffer[this.ungetCursor - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.ungetBuffer;
        int i2 = this.ungetCursor;
        this.ungetCursor = i2 + 1;
        iArr[i2] = i;
        this.cursor--;
    }

    private void ungetCharIgnoreLineEnd(int i) {
        int[] iArr = this.ungetBuffer;
        int i2 = this.ungetCursor;
        this.ungetCursor = i2 + 1;
        iArr[i2] = i;
        this.cursor--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean eof() {
        return this.hitEOF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getAndResetCurrentComment() {
        if (this.sourceString != null) {
            if (isMarkingComment()) {
                Kit.codeBug();
            }
            return this.sourceString.substring(this.tokenBeg, this.tokenEnd);
        }
        if (!isMarkingComment()) {
            Kit.codeBug();
        }
        StringBuilder sb = new StringBuilder(this.commentPrefix);
        sb.append(this.sourceBuffer, this.commentCursor, getTokenLength() - this.commentPrefix.length());
        this.commentCursor = -1;
        return sb.toString();
    }

    public Token.CommentType getCommentType() {
        return this.commentType;
    }

    public int getCursor() {
        return this.cursor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstXMLToken() throws IOException {
        this.xmlOpenTagsCount = 0;
        this.xmlIsAttribute = false;
        this.xmlIsTagContent = false;
        if (!canUngetChar()) {
            return -1;
        }
        ungetChar(60);
        return getNextXMLToken();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getLine() {
        int i;
        int i2 = this.sourceCursor;
        if (this.lineEndChar >= 0) {
            int i3 = i2 - 1;
            i = i3;
            if (this.lineEndChar == 10) {
                i = i3;
                if (charAt(i3 - 1) == 13) {
                    i = i3 - 1;
                }
            }
        } else {
            int i4 = i2 - this.lineStart;
            while (true) {
                int charAt = charAt(this.lineStart + i4);
                if (charAt == -1 || ScriptRuntime.isJSLineTerminator(charAt)) {
                    break;
                }
                i4++;
            }
            i = i4 + this.lineStart;
        }
        return substring(this.lineStart, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getLine(int i, int[] iArr) {
        int i2 = (this.cursor + this.ungetCursor) - i;
        int i3 = this.sourceCursor;
        if (i2 > i3) {
            return null;
        }
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            int charAt = charAt(i3 - 1);
            int i6 = i2;
            i4 = i4;
            i5 = i5;
            int i7 = i3;
            if (ScriptRuntime.isJSLineTerminator(charAt)) {
                i6 = i2;
                int i8 = i3;
                if (charAt == 10) {
                    i6 = i2;
                    i8 = i3;
                    if (charAt(i3 - 2) == 13) {
                        i6 = i2 - 1;
                        i8 = i3 - 1;
                    }
                }
                i4++;
                i5 = i8 - 1;
                i7 = i8;
            }
            i2 = i6 - 1;
            i3 = i7 - 1;
        }
        int i9 = 0;
        while (true) {
            if (i3 <= 0) {
                i3 = 0;
                break;
            } else if (ScriptRuntime.isJSLineTerminator(charAt(i3 - 1))) {
                break;
            } else {
                i3--;
                i9++;
            }
        }
        iArr[0] = (this.lineno - i4) + (this.lineEndChar >= 0 ? 1 : 0);
        iArr[1] = i9;
        return i4 == 0 ? getLine() : substring(i3, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getLineno() {
        return this.lineno;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0246, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getNextXMLToken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getNextXMLToken():int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double getNumber() {
        return this.number;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getOffset() {
        int i = this.sourceCursor - this.lineStart;
        int i2 = i;
        if (this.lineEndChar >= 0) {
            i2 = i - 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char getQuoteChar() {
        return (char) this.quoteChar;
    }

    final String getSourceString() {
        return this.sourceString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getString() {
        return this.string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0890, code lost:
        if (r5 == 69) goto L_0x0893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x08e2, code lost:
        if (r0 == 45) goto L_0x08e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0176, code lost:
        if (r0 == 72) goto L_0x0179;
     */
    /* JADX WARN: Removed duplicated region for block: B:193:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x07e6  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0807 A[LOOP:7: B:345:0x0807->B:358:0x085e, LOOP_START, PHI: r9 r10 
      PHI: (r9v8 int) = (r9v0 int), (r9v9 int) binds: [B:340:0x07e3, B:358:0x085e] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v1 int) = (r10v0 int), (r10v2 int) binds: [B:340:0x07e3, B:358:0x085e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x08dd  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0904 A[LOOP:9: B:385:0x0904->B:386:0x0914, LOOP_START, PHI: r5 
      PHI: (r5v6 int) = (r5v5 int), (r5v7 int) binds: [B:382:0x08f5, B:386:0x0914] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0452 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:215:0x0446 -> B:216:0x0448). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:221:0x046d -> B:213:0x043a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getToken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getToken():int");
    }

    public int getTokenBeg() {
        return this.tokenBeg;
    }

    public int getTokenEnd() {
        return this.tokenEnd;
    }

    public int getTokenLength() {
        return this.tokenEnd - this.tokenBeg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isNumberHex() {
        return this.isHex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isNumberOctal() {
        return this.isOctal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isXMLAttribute() {
        return this.xmlIsAttribute;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readAndClearRegExpFlags() {
        String str = this.regExpFlags;
        this.regExpFlags = null;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void readRegExp(int i) throws IOException {
        int i2;
        int i3;
        int i4 = this.tokenBeg;
        this.stringBufferTop = 0;
        if (i == 100) {
            addToString(61);
        } else if (i != 24) {
            Kit.codeBug();
        }
        boolean z = false;
        while (true) {
            i2 = getChar();
            if (i2 == 47 && !z) {
                int i5 = this.stringBufferTop;
                while (true) {
                    if (!matchChar(103)) {
                        if (!matchChar(105)) {
                            if (!matchChar(109)) {
                                if (!matchChar(121)) {
                                    break;
                                }
                                addToString(121);
                            } else {
                                addToString(109);
                            }
                        } else {
                            addToString(105);
                        }
                    } else {
                        addToString(103);
                    }
                }
                this.tokenEnd = i4 + this.stringBufferTop + 2;
                if (isAlpha(peekChar())) {
                    this.parser.reportError("msg.invalid.re.flag");
                }
                this.string = new String(this.stringBuffer, 0, i5);
                this.regExpFlags = new String(this.stringBuffer, i5, this.stringBufferTop - i5);
                return;
            } else if (i2 == 10 || i2 == -1) {
                break;
            } else {
                if (i2 == 92) {
                    addToString(i2);
                    i3 = getChar();
                } else if (i2 == 91) {
                    z = true;
                    i3 = i2;
                } else {
                    i3 = i2;
                    if (i2 == 93) {
                        z = false;
                        i3 = i2;
                    }
                }
                addToString(i3);
            }
        }
        ungetChar(i2);
        this.tokenEnd = this.cursor - 1;
        this.string = new String(this.stringBuffer, 0, this.stringBufferTop);
        this.parser.reportError("msg.unterminated.re.lit");
    }

    String tokenToString(int i) {
        return "";
    }
}
