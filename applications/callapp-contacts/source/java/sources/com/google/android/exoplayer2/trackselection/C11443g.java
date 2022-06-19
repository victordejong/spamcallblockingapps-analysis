package com.google.android.exoplayer2.trackselection;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.trackselection.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/g.class */
public final class C11443g {

    /* renamed from: a */
    public final int f37828a;

    /* renamed from: b */
    public final AbstractC11442f[] f37829b;

    /* renamed from: c */
    private int f37830c;

    public C11443g(AbstractC11442f... abstractC11442fArr) {
        this.f37829b = abstractC11442fArr;
        this.f37828a = abstractC11442fArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.f37829b, ((C11443g) obj).f37829b);
        }
        return false;
    }

    public final int hashCode() {
        if (this.f37830c == 0) {
            this.f37830c = Arrays.hashCode(this.f37829b) + 527;
        }
        return this.f37830c;
    }
}
