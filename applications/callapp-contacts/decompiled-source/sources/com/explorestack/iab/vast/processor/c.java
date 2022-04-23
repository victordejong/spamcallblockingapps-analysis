package com.explorestack.iab.vast.processor;

import com.explorestack.iab.vast.tags.r;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    boolean f19284a;

    /* renamed from: b  reason: collision with root package name */
    boolean f19285b;

    /* renamed from: c  reason: collision with root package name */
    boolean f19286c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
        this(true, true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(r rVar) {
        this(rVar.e("followAdditionalWrappers"), rVar.e("allowMultipleAds"), rVar.e("fallbackOnNoAd"));
    }

    private c(boolean z, boolean z2, boolean z3) {
        this.f19284a = z;
        this.f19285b = z2;
        this.f19286c = z3;
    }
}
