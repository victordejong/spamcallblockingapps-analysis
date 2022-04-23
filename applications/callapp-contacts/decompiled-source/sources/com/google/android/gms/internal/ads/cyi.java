package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyi.class */
final class cyi implements cym {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cxp f26568a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cyi(cxp cxpVar) {
        this.f26568a = cxpVar;
    }

    @Override // com.google.android.gms.internal.ads.cym
    public final /* synthetic */ Iterator a(cyf cyfVar, CharSequence charSequence) {
        return new cyh(this, cyfVar, charSequence);
    }
}
