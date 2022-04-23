package com.b.a.a.b;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    int f3257a;

    /* renamed from: b  reason: collision with root package name */
    int f3258b;
    int c;
    final int[] d = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return (this.f3257a & 2) != 0 ? this.d[1] : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final m a(int i, int i2, int i3) {
        if (i < this.d.length) {
            int i4 = 1 << i;
            this.f3257a |= i4;
            if ((i2 & 1) != 0) {
                this.f3258b |= i4;
            } else {
                this.f3258b &= i4 ^ (-1);
            }
            if ((i2 & 2) != 0) {
                this.c = i4 | this.c;
            } else {
                this.c = (i4 ^ (-1)) & this.c;
            }
            this.d[i] = i3;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        boolean z = true;
        if (((1 << i) & this.f3257a) == 0) {
            z = false;
        }
        return z;
    }

    public final int b() {
        return (this.f3257a & 128) != 0 ? this.d[7] : 65536;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        boolean z = false;
        int i2 = ((1 << i) & this.c) != 0 ? 2 : 0;
        if (((1 << i) & this.f3258b) != 0) {
            z = true;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 | 1;
        }
        return i3;
    }
}
