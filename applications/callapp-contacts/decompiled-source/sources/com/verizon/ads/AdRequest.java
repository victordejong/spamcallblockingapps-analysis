package com.verizon.ads;

import com.verizon.ads.VASAds;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequest.class */
public final class AdRequest {

    /* renamed from: a  reason: collision with root package name */
    final WaterfallProvider f35250a;

    /* renamed from: b  reason: collision with root package name */
    final Bid f35251b;

    /* renamed from: c  reason: collision with root package name */
    final int f35252c;

    /* renamed from: d  reason: collision with root package name */
    final VASAds.AdRequestListener f35253d;
    final RequestMetadata e;
    final Class f;
    boolean g;
    boolean h;
    boolean i;
    final List<WaterfallProcessingRunnable> j = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdRequest(WaterfallProvider waterfallProvider, Bid bid, RequestMetadata requestMetadata, Class cls, int i, VASAds.AdRequestListener adRequestListener) {
        this.f35250a = waterfallProvider;
        this.f35251b = bid;
        this.e = requestMetadata;
        this.f35252c = i;
        this.f35253d = adRequestListener;
        this.f = cls;
    }
}
