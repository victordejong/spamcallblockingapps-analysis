package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import java.util.Arrays;
import okhttp3.internal.http2.Settings;
/* renamed from: com.bytedance.sdk.a.b.a.e.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/n.class */
public final class C4078n {

    /* renamed from: a */
    private int f14826a;

    /* renamed from: b */
    private final int[] f14827b = new int[10];

    /* renamed from: a */
    public final C4078n m36680a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f14827b;
            if (i < iArr.length) {
                this.f14826a = (1 << i) | this.f14826a;
                iArr[i] = i2;
            }
        }
        return this;
    }

    /* renamed from: a */
    public final void m36682a() {
        this.f14826a = 0;
        Arrays.fill(this.f14827b, 0);
    }

    /* renamed from: a */
    public final void m36679a(C4078n c4078n) {
        for (int i = 0; i < 10; i++) {
            if (c4078n.m36681a(i)) {
                m36680a(i, c4078n.m36677b(i));
            }
        }
    }

    /* renamed from: a */
    public final boolean m36681a(int i) {
        return ((1 << i) & this.f14826a) != 0;
    }

    /* renamed from: b */
    public final int m36678b() {
        return Integer.bitCount(this.f14826a);
    }

    /* renamed from: b */
    public final int m36677b(int i) {
        return this.f14827b[i];
    }

    /* renamed from: c */
    public final int m36676c() {
        if ((this.f14826a & 2) != 0) {
            return this.f14827b[1];
        }
        return -1;
    }

    /* renamed from: c */
    public final int m36675c(int i) {
        if ((this.f14826a & 16) != 0) {
            i = this.f14827b[4];
        }
        return i;
    }

    /* renamed from: d */
    public final int m36674d() {
        return (this.f14826a & 128) != 0 ? this.f14827b[7] : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    /* renamed from: d */
    public final int m36673d(int i) {
        if ((this.f14826a & 32) != 0) {
            i = this.f14827b[5];
        }
        return i;
    }
}
