package com.google.android.exoplayer2.trackselection;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final int f21941a;

    /* renamed from: b  reason: collision with root package name */
    public final f[] f21942b;

    /* renamed from: c  reason: collision with root package name */
    private int f21943c;

    public g(f... fVarArr) {
        this.f21942b = fVarArr;
        this.f21941a = fVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f21942b, ((g) obj).f21942b);
    }

    public final int hashCode() {
        if (this.f21943c == 0) {
            this.f21943c = Arrays.hashCode(this.f21942b) + 527;
        }
        return this.f21943c;
    }
}
