package com.explorestack.iab.vast.processor;

import com.explorestack.iab.vast.tags.C9680r;
/* renamed from: com.explorestack.iab.vast.processor.c */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/c.class */
final class C9661c {

    /* renamed from: a */
    boolean f32775a;

    /* renamed from: b */
    boolean f32776b;

    /* renamed from: c */
    boolean f32777c;

    public C9661c() {
        this(true, true, true);
    }

    public C9661c(C9680r c9680r) {
        this(c9680r.m23840e("followAdditionalWrappers"), c9680r.m23840e("allowMultipleAds"), c9680r.m23840e("fallbackOnNoAd"));
    }

    private C9661c(boolean z, boolean z2, boolean z3) {
        this.f32775a = z;
        this.f32776b = z2;
        this.f32777c = z3;
    }
}
