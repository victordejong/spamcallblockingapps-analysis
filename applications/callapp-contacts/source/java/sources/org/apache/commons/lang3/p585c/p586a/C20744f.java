package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.f */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/f.class */
public final class C20744f extends AbstractC20740b {

    /* renamed from: b */
    private final HashMap<String, String> f67231b = new HashMap<>();

    /* renamed from: c */
    private final HashSet<Character> f67232c = new HashSet<>();

    /* renamed from: d */
    private final int f67233d;

    /* renamed from: e */
    private final int f67234e;

    public C20744f(CharSequence[]... charSequenceArr) {
        int i;
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        if (charSequenceArr != null) {
            int length = charSequenceArr.length;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i = i6;
                if (i5 >= length) {
                    break;
                }
                CharSequence[] charSequenceArr2 = charSequenceArr[i5];
                this.f67231b.put(charSequenceArr2[0].toString(), charSequenceArr2[1].toString());
                this.f67232c.add(Character.valueOf(charSequenceArr2[0].charAt(0)));
                int length2 = charSequenceArr2[0].length();
                int i7 = length2 < i3 ? length2 : i3;
                int i8 = i;
                if (length2 > i) {
                    i8 = length2;
                }
                i5++;
                i3 = i7;
                i6 = i8;
            }
            i2 = i;
            i4 = i3;
        }
        this.f67233d = i4;
        this.f67234e = i2;
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (this.f67232c.contains(Character.valueOf(charSequence.charAt(i)))) {
            int i2 = this.f67234e;
            int i3 = i2;
            if (i + i2 > charSequence.length()) {
                i3 = charSequence.length() - i;
            }
            while (i3 >= this.f67233d) {
                String str = this.f67231b.get(charSequence.subSequence(i, i + i3).toString());
                if (str != null) {
                    writer.write(str);
                    return i3;
                }
                i3--;
            }
            return 0;
        }
        return 0;
    }
}
