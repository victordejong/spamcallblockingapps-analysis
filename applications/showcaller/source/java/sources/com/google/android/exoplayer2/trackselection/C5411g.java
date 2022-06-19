package com.google.android.exoplayer2.trackselection;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.trackselection.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/g.class */
public final class C5411g {

    /* renamed from: a */
    public final int f17384a;

    /* renamed from: b */
    private final AbstractC5408f[] f17385b;

    /* renamed from: c */
    private int f17386c;

    public C5411g(AbstractC5408f... abstractC5408fArr) {
        this.f17385b = abstractC5408fArr;
        this.f17384a = abstractC5408fArr.length;
    }

    /* renamed from: a */
    public AbstractC5408f m19279a(int i) {
        return this.f17385b[i];
    }

    /* renamed from: b */
    public AbstractC5408f[] m19278b() {
        return (AbstractC5408f[]) this.f17385b.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5411g.class == obj.getClass()) {
            return Arrays.equals(this.f17385b, ((C5411g) obj).f17385b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f17386c == 0) {
            this.f17386c = 527 + Arrays.hashCode(this.f17385b);
        }
        return this.f17386c;
    }
}
