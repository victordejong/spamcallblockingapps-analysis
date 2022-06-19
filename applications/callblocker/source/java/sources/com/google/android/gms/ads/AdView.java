package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.C2662s;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdView.class */
public final class AdView extends C2294g {
    public AdView(Context context) {
        super(context, 0);
        C2662s.m13980a(context, "Context cannot be null");
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }

    @Override // com.google.android.gms.ads.C2294g
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo14817a() {
        super.mo14817a();
    }

    @Override // com.google.android.gms.ads.C2294g
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo14816a(C2282d c2282d) {
        super.mo14816a(c2282d);
    }

    @Override // com.google.android.gms.ads.C2294g
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo14815b() {
        super.mo14815b();
    }

    @Override // com.google.android.gms.ads.C2294g
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo14814c() {
        super.mo14814c();
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ C2249b getAdListener() {
        return super.getAdListener();
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ C2286e getAdSize() {
        return super.getAdSize();
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ String getAdUnitId() {
        return super.getAdUnitId();
    }

    @Override // com.google.android.gms.ads.C2294g
    @Deprecated
    public final /* bridge */ /* synthetic */ String getMediationAdapterClassName() {
        return super.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ C2386o getResponseInfo() {
        return super.getResponseInfo();
    }

    public final C2387p getVideoController() {
        return this.f6624a != null ? this.f6624a.m8015l() : null;
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ void setAdListener(C2249b c2249b) {
        super.setAdListener(c2249b);
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ void setAdSize(C2286e c2286e) {
        super.setAdSize(c2286e);
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        super.setAdUnitId(str);
    }

    @Override // com.google.android.gms.ads.C2294g
    public final /* bridge */ /* synthetic */ void setOnPaidEventListener(AbstractC2345l abstractC2345l) {
        super.setOnPaidEventListener(abstractC2345l);
    }
}
