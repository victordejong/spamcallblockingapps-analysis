package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<a> f22343a = _$$Lambda$y$ADdbTyC9M7verZkjX1Br_TQCkb8.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    public static final Comparator<a> f22344b = _$$Lambda$y$9C0_qmai4BId_CAoaC3xXjmzl6A.INSTANCE;

    /* renamed from: c  reason: collision with root package name */
    public final int f22345c;
    public int g;
    public int h;
    public int i;
    public final a[] e = new a[5];

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<a> f22346d = new ArrayList<>();
    public int f = -1;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/y$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f22347a;

        /* renamed from: b  reason: collision with root package name */
        public int f22348b;

        /* renamed from: c  reason: collision with root package name */
        public float f22349c;

        private a() {
        }
    }

    public y(int i) {
        this.f22345c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(a aVar, a aVar2) {
        return Float.compare(aVar.f22349c, aVar2.f22349c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(a aVar, a aVar2) {
        return aVar.f22347a - aVar2.f22347a;
    }
}
