package com.google.android.exoplayer2.decoder;

import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f20837a;

    /* renamed from: b  reason: collision with root package name */
    public final Format f20838b;

    /* renamed from: c  reason: collision with root package name */
    public final Format f20839c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20840d;
    public final int e;

    public e(String str, Format format, Format format2, int i, int i2) {
        a.a(i == 0 || i2 == 0);
        if (!TextUtils.isEmpty(str)) {
            this.f20837a = str;
            this.f20838b = (Format) a.b(format);
            this.f20839c = (Format) a.b(format2);
            this.f20840d = i;
            this.e = i2;
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
        e eVar = (e) obj;
        return this.f20840d == eVar.f20840d && this.e == eVar.e && this.f20837a.equals(eVar.f20837a) && this.f20838b.equals(eVar.f20838b) && this.f20839c.equals(eVar.f20839c);
    }

    public final int hashCode() {
        return ((((((((this.f20840d + 527) * 31) + this.e) * 31) + this.f20837a.hashCode()) * 31) + this.f20838b.hashCode()) * 31) + this.f20839c.hashCode();
    }
}
