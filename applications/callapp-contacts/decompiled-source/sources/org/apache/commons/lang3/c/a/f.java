package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/f.class */
public final class f extends b {

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, String> f39158b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashSet<Character> f39159c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final int f39160d;
    private final int e;

    public f(CharSequence[]... charSequenceArr) {
        int i = 0;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        if (charSequenceArr != null) {
            int i4 = 0;
            for (CharSequence[] charSequenceArr2 : charSequenceArr) {
                this.f39158b.put(charSequenceArr2[0].toString(), charSequenceArr2[1].toString());
                this.f39159c.add(Character.valueOf(charSequenceArr2[0].charAt(0)));
                int length = charSequenceArr2[0].length();
                i2 = length < i2 ? length : i2;
                i4 = i4;
                if (length > i4) {
                    i4 = length;
                }
            }
            i = i4;
            i3 = i2;
        }
        this.f39160d = i3;
        this.e = i;
    }

    @Override // org.apache.commons.lang3.c.a.b
    public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (!this.f39159c.contains(Character.valueOf(charSequence.charAt(i)))) {
            return 0;
        }
        int i2 = this.e;
        int i3 = i2;
        if (i + i2 > charSequence.length()) {
            i3 = charSequence.length() - i;
        }
        while (i3 >= this.f39160d) {
            String str = this.f39158b.get(charSequence.subSequence(i, i + i3).toString());
            if (str != null) {
                writer.write(str);
                return i3;
            }
            i3--;
        }
        return 0;
    }
}
