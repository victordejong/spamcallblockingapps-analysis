package com.esotericsoftware.kryo.p278c;

import okhttp3.HttpUrl;
/* renamed from: com.esotericsoftware.kryo.c.i */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/i.class */
public final class C9394i {

    /* renamed from: a */
    public int[] f32302a;

    /* renamed from: b */
    public int f32303b;

    /* renamed from: c */
    public boolean f32304c;

    public C9394i() {
        this(true, 16);
    }

    public C9394i(int i) {
        this(true, i);
    }

    public C9394i(C9394i c9394i) {
        this.f32304c = c9394i.f32304c;
        int i = c9394i.f32303b;
        this.f32303b = i;
        int[] iArr = new int[i];
        this.f32302a = iArr;
        System.arraycopy(c9394i.f32302a, 0, iArr, 0, i);
    }

    public C9394i(boolean z, int i) {
        this.f32304c = z;
        this.f32302a = new int[i];
    }

    public C9394i(boolean z, int[] iArr, int i, int i2) {
        this(z, i2);
        this.f32303b = i2;
        System.arraycopy(iArr, i, this.f32302a, 0, i2);
    }

    public C9394i(int[] iArr) {
        this(true, iArr, 0, iArr.length);
    }

    /* renamed from: a */
    public final int m24337a() {
        int[] iArr = this.f32302a;
        int i = this.f32303b - 1;
        this.f32303b = i;
        return iArr[i];
    }

    /* renamed from: a */
    public final void m24336a(int i) {
        int[] iArr = this.f32302a;
        int i2 = this.f32303b;
        int[] iArr2 = iArr;
        if (i2 == iArr.length) {
            int max = Math.max(8, (int) (i2 * 1.75f));
            iArr2 = new int[max];
            System.arraycopy(this.f32302a, 0, iArr2, 0, Math.min(this.f32303b, max));
            this.f32302a = iArr2;
        }
        int i3 = this.f32303b;
        this.f32303b = i3 + 1;
        iArr2[i3] = i;
    }

    public final boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.f32304c || !(obj instanceof C9394i)) {
            return false;
        }
        C9394i c9394i = (C9394i) obj;
        if (!c9394i.f32304c || (i = this.f32303b) != c9394i.f32303b) {
            return false;
        }
        int[] iArr = this.f32302a;
        int[] iArr2 = c9394i.f32302a;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (!this.f32304c) {
            return super.hashCode();
        }
        int[] iArr = this.f32302a;
        int i = this.f32303b;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    public final String toString() {
        if (this.f32303b == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        int[] iArr = this.f32302a;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(iArr[0]);
        for (int i = 1; i < this.f32303b; i++) {
            sb.append(", ");
            sb.append(iArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }
}
