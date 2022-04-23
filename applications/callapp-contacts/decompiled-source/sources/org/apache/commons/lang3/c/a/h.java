package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/h.class */
public final class h extends b {

    /* renamed from: b  reason: collision with root package name */
    private final EnumSet<a> f39164b;

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/h$a.class */
    public enum a {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public h(a... aVarArr) {
        if (aVarArr.length > 0) {
            this.f39164b = EnumSet.copyOf(Arrays.asList(aVarArr));
        } else {
            this.f39164b = EnumSet.copyOf(Collections.singletonList(a.semiColonRequired));
        }
    }

    private boolean a(a aVar) {
        EnumSet<a> enumSet = this.f39164b;
        return enumSet != null && enumSet.contains(aVar);
    }

    @Override // org.apache.commons.lang3.c.a.b
    public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2;
        int length = charSequence.length();
        if (charSequence.charAt(i) != '&' || i >= length - 2 || charSequence.charAt(i + 1) != '#') {
            return 0;
        }
        int i3 = i + 2;
        char charAt = charSequence.charAt(i3);
        if (charAt == 'x' || charAt == 'X') {
            i3++;
            if (i3 == length) {
                return 0;
            }
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i4 = i3;
        while (i4 < length && ((charSequence.charAt(i4) >= '0' && charSequence.charAt(i4) <= '9') || ((charSequence.charAt(i4) >= 'a' && charSequence.charAt(i4) <= 'f') || (charSequence.charAt(i4) >= 'A' && charSequence.charAt(i4) <= 'F')))) {
            i4++;
        }
        int i5 = (i4 == length || charSequence.charAt(i4) != ';') ? 0 : 1;
        if (i5 == 0) {
            if (a(a.semiColonRequired)) {
                return 0;
            }
            if (a(a.errorIfNoSemiColon)) {
                throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
            }
        }
        try {
            int parseInt = i2 != 0 ? Integer.parseInt(charSequence.subSequence(i3, i4).toString(), 16) : Integer.parseInt(charSequence.subSequence(i3, i4).toString(), 10);
            if (parseInt > 65535) {
                char[] chars = Character.toChars(parseInt);
                writer.write(chars[0]);
                writer.write(chars[1]);
            } else {
                writer.write(parseInt);
            }
            return ((i4 + 2) - i3) + i2 + i5;
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
