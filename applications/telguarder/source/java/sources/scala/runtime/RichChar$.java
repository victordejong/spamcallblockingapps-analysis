package scala.runtime;

import scala.math.Numeric$CharIsIntegral$;
import scala.math.Ordering$Char$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichChar$.class */
public final class RichChar$ {
    public static final RichChar$ MODULE$ = null;

    static {
        new RichChar$();
    }

    private RichChar$() {
        MODULE$ = this;
    }

    public final char abs$extension(char c) {
        return c;
    }

    public final int asDigit$extension(char c) {
        return Character.digit(c, 36);
    }

    public final byte byteValue$extension(char c) {
        return (byte) c;
    }

    public final double doubleValue$extension(char c) {
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r4 == ((scala.runtime.RichChar) r5).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(char r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.RichChar
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r4
            r1 = r5
            scala.runtime.RichChar r1 = (scala.runtime.RichChar) r1
            char r1 = r1.self()
            if (r0 != r1) goto L1c
            r0 = 1
            r4 = r0
            goto L1e
        L1c:
            r0 = 0
            r4 = r0
        L1e:
            r0 = r4
            if (r0 == 0) goto L25
            goto L28
        L25:
            r0 = 0
            r7 = r0
        L28:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichChar$.equals$extension(char, java.lang.Object):boolean");
    }

    public final float floatValue$extension(char c) {
        return c;
    }

    public final byte getDirectionality$extension(char c) {
        return Character.getDirectionality(c);
    }

    public final int getNumericValue$extension(char c) {
        return Character.getNumericValue(c);
    }

    public final int getType$extension(char c) {
        return Character.getType(c);
    }

    public final int hashCode$extension(char c) {
        return BoxesRunTime.boxToCharacter(c).hashCode();
    }

    public final int intValue$extension(char c) {
        return c;
    }

    public final boolean isControl$extension(char c) {
        return Character.isISOControl(c);
    }

    public final boolean isDigit$extension(char c) {
        return Character.isDigit(c);
    }

    public final boolean isHighSurrogate$extension(char c) {
        return Character.isHighSurrogate(c);
    }

    public final boolean isIdentifierIgnorable$extension(char c) {
        return Character.isIdentifierIgnorable(c);
    }

    public final boolean isLetter$extension(char c) {
        return Character.isLetter(c);
    }

    public final boolean isLetterOrDigit$extension(char c) {
        return Character.isLetterOrDigit(c);
    }

    public final boolean isLowSurrogate$extension(char c) {
        return Character.isLowSurrogate(c);
    }

    public final boolean isLower$extension(char c) {
        return Character.isLowerCase(c);
    }

    public final boolean isMirrored$extension(char c) {
        return Character.isMirrored(c);
    }

    public final boolean isSpaceChar$extension(char c) {
        return Character.isSpaceChar(c);
    }

    public final boolean isSurrogate$extension(char c) {
        return isHighSurrogate$extension(c) || isLowSurrogate$extension(c);
    }

    public final boolean isTitleCase$extension(char c) {
        return Character.isTitleCase(c);
    }

    public final boolean isUnicodeIdentifierPart$extension(char c) {
        return Character.isUnicodeIdentifierPart(c);
    }

    public final boolean isUnicodeIdentifierStart$extension(char c) {
        return Character.isUnicodeIdentifierStart(c);
    }

    public final boolean isUpper$extension(char c) {
        return Character.isUpperCase(c);
    }

    public final boolean isValidChar$extension(char c) {
        return true;
    }

    public final boolean isWhitespace$extension(char c) {
        return Character.isWhitespace(c);
    }

    public final long longValue$extension(char c) {
        return c;
    }

    public final char max$extension(char c, char c2) {
        return (char) package$.MODULE$.max((int) c, (int) c2);
    }

    public final char min$extension(char c, char c2) {
        return (char) package$.MODULE$.min((int) c, (int) c2);
    }

    public final Numeric$CharIsIntegral$ num$extension(char c) {
        return Numeric$CharIsIntegral$.MODULE$;
    }

    public final Ordering$Char$ ord$extension(char c) {
        return Ordering$Char$.MODULE$;
    }

    public final char reverseBytes$extension(char c) {
        return Character.reverseBytes(c);
    }

    public final short shortValue$extension(char c) {
        return (short) c;
    }

    public final int signum$extension(char c) {
        return package$.MODULE$.signum((int) c);
    }

    public final char toLower$extension(char c) {
        return Character.toLowerCase(c);
    }

    public final char toTitleCase$extension(char c) {
        return Character.toTitleCase(c);
    }

    public final char toUpper$extension(char c) {
        return Character.toUpperCase(c);
    }
}
