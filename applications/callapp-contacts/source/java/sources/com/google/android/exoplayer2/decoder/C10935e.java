package com.google.android.exoplayer2.decoder;

import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.decoder.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/e.class */
public final class C10935e {

    /* renamed from: a */
    public final String f35368a;

    /* renamed from: b */
    public final Format f35369b;

    /* renamed from: c */
    public final Format f35370c;

    /* renamed from: d */
    public final int f35371d;

    /* renamed from: e */
    public final int f35372e;

    public C10935e(String str, Format format, Format format2, int i, int i2) {
        C11593a.m20022a(i == 0 || i2 == 0);
        if (!TextUtils.isEmpty(str)) {
            this.f35368a = str;
            this.f35369b = (Format) C11593a.m20020b(format);
            this.f35370c = (Format) C11593a.m20020b(format2);
            this.f35371d = i;
            this.f35372e = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C10935e c10935e = (C10935e) obj;
        return this.f35371d == c10935e.f35371d && this.f35372e == c10935e.f35372e && this.f35368a.equals(c10935e.f35368a) && this.f35369b.equals(c10935e.f35369b) && this.f35370c.equals(c10935e.f35370c);
    }

    public final int hashCode() {
        return ((((((((this.f35371d + 527) * 31) + this.f35372e) * 31) + this.f35368a.hashCode()) * 31) + this.f35369b.hashCode()) * 31) + this.f35370c.hashCode();
    }
}
