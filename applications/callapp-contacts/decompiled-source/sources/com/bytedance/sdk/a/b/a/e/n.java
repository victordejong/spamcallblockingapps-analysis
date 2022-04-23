package com.bytedance.sdk.a.b.a.e;

import java.util.Arrays;
import okhttp3.internal.http2.Settings;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private int f8021a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f8022b = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    public final n a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f8022b;
            if (i < iArr.length) {
                this.f8021a = (1 << i) | this.f8021a;
                iArr[i] = i2;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f8021a = 0;
        Arrays.fill(this.f8022b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(n nVar) {
        for (int i = 0; i < 10; i++) {
            if (nVar.a(i)) {
                a(i, nVar.b(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        return ((1 << i) & this.f8021a) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return Integer.bitCount(this.f8021a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        return this.f8022b[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        if ((this.f8021a & 2) != 0) {
            return this.f8022b[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(int i) {
        if ((this.f8021a & 16) != 0) {
            i = this.f8022b[4];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d() {
        return (this.f8021a & 128) != 0 ? this.f8022b[7] : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(int i) {
        if ((this.f8021a & 32) != 0) {
            i = this.f8022b[5];
        }
        return i;
    }
}
