package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Comparator;
/* renamed from: com.google.android.exoplayer2.util.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/y.class */
public final class C11632y {

    /* renamed from: a */
    public static final Comparator<C11634a> f38741a = _$$Lambda$y$ADdbTyC9M7verZkjX1Br_TQCkb8.INSTANCE;

    /* renamed from: b */
    public static final Comparator<C11634a> f38742b = _$$Lambda$y$9C0_qmai4BId_CAoaC3xXjmzl6A.INSTANCE;

    /* renamed from: c */
    public final int f38743c;

    /* renamed from: g */
    public int f38747g;

    /* renamed from: h */
    public int f38748h;

    /* renamed from: i */
    public int f38749i;

    /* renamed from: e */
    public final C11634a[] f38745e = new C11634a[5];

    /* renamed from: d */
    public final ArrayList<C11634a> f38744d = new ArrayList<>();

    /* renamed from: f */
    public int f38746f = -1;

    /* renamed from: com.google.android.exoplayer2.util.y$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/y$a.class */
    public static final class C11634a {

        /* renamed from: a */
        public int f38750a;

        /* renamed from: b */
        public int f38751b;

        /* renamed from: c */
        public float f38752c;

        /* JADX INFO: Access modifiers changed from: private */
        public C11634a() {
        }
    }

    public C11632y(int i) {
        this.f38743c = i;
    }

    /* renamed from: a */
    public static /* synthetic */ int m19765a(C11634a c11634a, C11634a c11634a2) {
        return Float.compare(c11634a.f38752c, c11634a2.f38752c);
    }

    /* renamed from: b */
    public static /* synthetic */ int m19764b(C11634a c11634a, C11634a c11634a2) {
        return c11634a.f38750a - c11634a2.f38750a;
    }
}
