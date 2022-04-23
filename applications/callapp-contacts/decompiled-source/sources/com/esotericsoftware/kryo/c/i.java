package com.esotericsoftware.kryo.c;

import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public int[] f18999a;

    /* renamed from: b  reason: collision with root package name */
    public int f19000b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19001c;

    public i() {
        this(true, 16);
    }

    public i(int i) {
        this(true, i);
    }

    public i(i iVar) {
        this.f19001c = iVar.f19001c;
        int i = iVar.f19000b;
        this.f19000b = i;
        int[] iArr = new int[i];
        this.f18999a = iArr;
        System.arraycopy(iVar.f18999a, 0, iArr, 0, i);
    }

    public i(boolean z, int i) {
        this.f19001c = z;
        this.f18999a = new int[i];
    }

    public i(boolean z, int[] iArr, int i, int i2) {
        this(z, i2);
        this.f19000b = i2;
        System.arraycopy(iArr, i, this.f18999a, 0, i2);
    }

    public i(int[] iArr) {
        this(true, iArr, 0, iArr.length);
    }

    public final int a() {
        int[] iArr = this.f18999a;
        int i = this.f19000b - 1;
        this.f19000b = i;
        return iArr[i];
    }

    public final void a(int i) {
        int[] iArr = this.f18999a;
        int i2 = this.f19000b;
        int[] iArr2 = iArr;
        if (i2 == iArr.length) {
            int max = Math.max(8, (int) (i2 * 1.75f));
            iArr2 = new int[max];
            System.arraycopy(this.f18999a, 0, iArr2, 0, Math.min(this.f19000b, max));
            this.f18999a = iArr2;
        }
        int i3 = this.f19000b;
        this.f19000b = i3 + 1;
        iArr2[i3] = i;
    }

    public final boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!(this.f19001c && (obj instanceof i))) {
            return false;
        }
        i iVar = (i) obj;
        if (!(iVar.f19001c && (i = this.f19000b) == iVar.f19000b)) {
            return false;
        }
        int[] iArr = this.f18999a;
        int[] iArr2 = iVar.f18999a;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (!this.f19001c) {
            return super.hashCode();
        }
        int[] iArr = this.f18999a;
        int i = this.f19000b;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    public final String toString() {
        if (this.f19000b == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        int[] iArr = this.f18999a;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(iArr[0]);
        for (int i = 1; i < this.f19000b; i++) {
            sb.append(", ");
            sb.append(iArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }
}
