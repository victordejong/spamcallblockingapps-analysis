package com.verizon.ads;

import com.verizon.ads.VASAds;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequest.class */
public final class AdRequest {

    /* renamed from: a */
    final WaterfallProvider f61132a;

    /* renamed from: b */
    final Bid f61133b;

    /* renamed from: c */
    final int f61134c;

    /* renamed from: d */
    final VASAds.AdRequestListener f61135d;

    /* renamed from: e */
    final RequestMetadata f61136e;

    /* renamed from: f */
    final Class f61137f;

    /* renamed from: g */
    boolean f61138g;

    /* renamed from: h */
    boolean f61139h;

    /* renamed from: i */
    boolean f61140i;

    /* renamed from: j */
    final List<WaterfallProcessingRunnable> f61141j = new ArrayList();

    public AdRequest(WaterfallProvider waterfallProvider, Bid bid, RequestMetadata requestMetadata, Class cls, int i, VASAds.AdRequestListener adRequestListener) {
        this.f61132a = waterfallProvider;
        this.f61133b = bid;
        this.f61136e = requestMetadata;
        this.f61134c = i;
        this.f61135d = adRequestListener;
        this.f61137f = cls;
    }
}
