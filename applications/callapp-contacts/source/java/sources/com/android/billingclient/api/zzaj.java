package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzaj.class */
final class zzaj implements AbstractC3334b, AbstractC3338e, AbstractC3343h, AbstractC3346j, AbstractC3350m {

    /* renamed from: a */
    private final long f12668a;

    public zzaj() {
        this.f12668a = 0L;
    }

    zzaj(long j) {
        this.f12668a = j;
    }

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, C3344i[] c3344iArr);

    public static native void nativeOnSkuDetailsResponse(int i, String str, C3347k[] c3347kArr, long j);

    @Override // com.android.billingclient.api.AbstractC3338e
    /* renamed from: a */
    public final void mo28286a() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.AbstractC3334b
    /* renamed from: a */
    public final void mo28287a(C3341g c3341g) {
        nativeOnAcknowledgePurchaseResponse(c3341g.f12609a, c3341g.f12610b, this.f12668a);
    }

    @Override // com.android.billingclient.api.AbstractC3346j
    /* renamed from: a */
    public final void mo28296a(C3341g c3341g, List<C3344i> list) {
        List<C3344i> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        nativeOnPurchasesUpdated(c3341g.f12609a, c3341g.f12610b, (C3344i[]) list2.toArray(new C3344i[list2.size()]));
    }

    @Override // com.android.billingclient.api.AbstractC3338e
    /* renamed from: b */
    public final void mo28285b(C3341g c3341g) {
        nativeOnBillingSetupFinished(c3341g.f12609a, c3341g.f12610b, this.f12668a);
    }

    @Override // com.android.billingclient.api.AbstractC3350m
    /* renamed from: b */
    public final void mo28284b(C3341g c3341g, List<C3347k> list) {
        List<C3347k> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        nativeOnSkuDetailsResponse(c3341g.f12609a, c3341g.f12610b, (C3347k[]) list2.toArray(new C3347k[list2.size()]), this.f12668a);
    }

    @Override // com.android.billingclient.api.AbstractC3343h
    /* renamed from: c */
    public final void mo38171c(C3341g c3341g) {
        nativeOnPriceChangeConfirmationResult(c3341g.f12609a, c3341g.f12610b, this.f12668a);
    }
}
