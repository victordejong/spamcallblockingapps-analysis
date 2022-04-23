package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzaj.class */
final class zzaj implements b, e, h, j, m {

    /* renamed from: a  reason: collision with root package name */
    private final long f7027a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj() {
        this.f7027a = 0L;
    }

    zzaj(long j) {
        this.f7027a = j;
    }

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, i[] iVarArr);

    public static native void nativeOnSkuDetailsResponse(int i, String str, k[] kVarArr, long j);

    @Override // com.android.billingclient.api.e
    public final void a() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.b
    public final void a(g gVar) {
        nativeOnAcknowledgePurchaseResponse(gVar.f6986a, gVar.f6987b, this.f7027a);
    }

    @Override // com.android.billingclient.api.j
    public final void a(g gVar, List<i> list) {
        List<i> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        nativeOnPurchasesUpdated(gVar.f6986a, gVar.f6987b, (i[]) list2.toArray(new i[list2.size()]));
    }

    @Override // com.android.billingclient.api.e
    public final void b(g gVar) {
        nativeOnBillingSetupFinished(gVar.f6986a, gVar.f6987b, this.f7027a);
    }

    @Override // com.android.billingclient.api.m
    public final void b(g gVar, List<k> list) {
        List<k> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        nativeOnSkuDetailsResponse(gVar.f6986a, gVar.f6987b, (k[]) list2.toArray(new k[list2.size()]), this.f7027a);
    }

    @Override // com.android.billingclient.api.h
    public final void c(g gVar) {
        nativeOnPriceChangeConfirmationResult(gVar.f6986a, gVar.f6987b, this.f7027a);
    }
}
