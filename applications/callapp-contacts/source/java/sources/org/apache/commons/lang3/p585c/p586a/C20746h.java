package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.h */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/h.class */
public final class C20746h extends AbstractC20740b {

    /* renamed from: b */
    private final EnumSet<EnumC20747a> f67238b;

    /* renamed from: org.apache.commons.lang3.c.a.h$a */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/h$a.class */
    public enum EnumC20747a {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public C20746h(EnumC20747a... enumC20747aArr) {
        if (enumC20747aArr.length > 0) {
            this.f67238b = EnumSet.copyOf((Collection) Arrays.asList(enumC20747aArr));
        } else {
            this.f67238b = EnumSet.copyOf((Collection) Collections.singletonList(EnumC20747a.semiColonRequired));
        }
    }

    /* renamed from: a */
    private boolean m536a(EnumC20747a enumC20747a) {
        EnumSet<EnumC20747a> enumSet = this.f67238b;
        return enumSet != null && enumSet.contains(enumC20747a);
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2;
        int length = charSequence.length();
        if (charSequence.charAt(i) == '&' && i < length - 2 && charSequence.charAt(i + 1) == '#') {
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
                if (m536a(EnumC20747a.semiColonRequired)) {
                    return 0;
                }
                if (m536a(EnumC20747a.errorIfNoSemiColon)) {
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
        return 0;
    }
}
