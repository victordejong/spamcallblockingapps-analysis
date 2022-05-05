package org.threeten.p040bp.format;

import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.format.DecimalStyle */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DecimalStyle.class */
public final class DecimalStyle {
    private final char decimalSeparator;
    private final char negativeSign;
    private final char positiveSign;
    private final char zeroDigit;
    public static final DecimalStyle STANDARD = new DecimalStyle('0', '+', '-', '.');
    private static final ConcurrentMap<Locale, DecimalStyle> CACHE = new ConcurrentHashMap(16, 0.75f, 2);

    private DecimalStyle(char c, char c2, char c3, char c4) {
        this.zeroDigit = c;
        this.positiveSign = c2;
        this.negativeSign = c3;
        this.decimalSeparator = c4;
    }

    private static DecimalStyle create(Locale locale) {
        DecimalFormatSymbols instance = DecimalFormatSymbols.getInstance(locale);
        char zeroDigit = instance.getZeroDigit();
        char minusSign = instance.getMinusSign();
        char decimalSeparator = instance.getDecimalSeparator();
        return (zeroDigit == '0' && minusSign == '-' && decimalSeparator == '.') ? STANDARD : new DecimalStyle(zeroDigit, '+', minusSign, decimalSeparator);
    }

    public static Set<Locale> getAvailableLocales() {
        return new HashSet(Arrays.asList(DecimalFormatSymbols.getAvailableLocales()));
    }

    /* renamed from: of */
    public static DecimalStyle m47of(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        DecimalStyle decimalStyle = CACHE.get(locale);
        DecimalStyle decimalStyle2 = decimalStyle;
        if (decimalStyle == null) {
            CACHE.putIfAbsent(locale, create(locale));
            decimalStyle2 = CACHE.get(locale);
        }
        return decimalStyle2;
    }

    public static DecimalStyle ofDefaultLocale() {
        return m47of(Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String convertNumberToI18N(String str) {
        if (this.zeroDigit == '0') {
            return str;
        }
        char c = this.zeroDigit;
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) (charArray[i] + (c - '0'));
        }
        return new String(charArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int convertToDigit(char c) {
        int i = c - this.zeroDigit;
        if (i < 0 || i > 9) {
            i = -1;
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DecimalStyle)) {
            return false;
        }
        DecimalStyle decimalStyle = (DecimalStyle) obj;
        if (!(this.zeroDigit == decimalStyle.zeroDigit && this.positiveSign == decimalStyle.positiveSign && this.negativeSign == decimalStyle.negativeSign && this.decimalSeparator == decimalStyle.decimalSeparator)) {
            z = false;
        }
        return z;
    }

    public char getDecimalSeparator() {
        return this.decimalSeparator;
    }

    public char getNegativeSign() {
        return this.negativeSign;
    }

    public char getPositiveSign() {
        return this.positiveSign;
    }

    public char getZeroDigit() {
        return this.zeroDigit;
    }

    public int hashCode() {
        return this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator;
    }

    public String toString() {
        return "DecimalStyle[" + this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator + "]";
    }

    public DecimalStyle withDecimalSeparator(char c) {
        return c == this.decimalSeparator ? this : new DecimalStyle(this.zeroDigit, this.positiveSign, this.negativeSign, c);
    }

    public DecimalStyle withNegativeSign(char c) {
        return c == this.negativeSign ? this : new DecimalStyle(this.zeroDigit, this.positiveSign, c, this.decimalSeparator);
    }

    public DecimalStyle withPositiveSign(char c) {
        return c == this.positiveSign ? this : new DecimalStyle(this.zeroDigit, c, this.negativeSign, this.decimalSeparator);
    }

    public DecimalStyle withZeroDigit(char c) {
        return c == this.zeroDigit ? this : new DecimalStyle(c, this.positiveSign, this.negativeSign, this.decimalSeparator);
    }
}
