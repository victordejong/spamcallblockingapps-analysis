package com.truecaller.ads;

import kotlin.Metadata;
import p193e.p194a.p852i.AbstractC15191g;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002B9\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007R\u001c\u0010\n\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007R\u001c\u0010\f\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\f\u0010\u0005\u001a\u0004\b\r\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0005\u001a\u0004\b\u000f\u0010\u0007j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/AdLayoutTypeX;", "", "Le/a/i/g;", "", "placeholderLayout", "I", "getPlaceholderLayout", "()I", "nativeLayout", "getNativeLayout", "bannerLayout", "getBannerLayout", "houseLayout", "getHouseLayout", "emptyLayout", "getEmptyLayout", "<init>", "(Ljava/lang/String;IIIIII)V", "SMALL", "MEGA_VIDEO", "ACS", "DETAILS", "ACS_LARGE", "ads_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/AdLayoutTypeX.class */
public enum AdLayoutTypeX implements AbstractC15191g {
    SMALL(C2808R.layout.ad_tcx_native_small_frameable, C2808R.layout.ad_frameable_banner_small, C2808R.layout.ad_tcx_house_small_frameable, 0, C2808R.layout.ad_tcx_placeholder_small, 8, null),
    MEGA_VIDEO(C2808R.layout.ad_tcx_native_mega, C2808R.layout.ad_frameable_banner_mega, C2808R.layout.ad_tcx_house_mega, 0, C2808R.layout.ad_tcx_placeholder_mega, 8, null),
    ACS(C2808R.layout.ad_tcx_native_acs, 0, 0, 0, 0, 30, null),
    DETAILS(C2808R.layout.ad_tcx_native_details, 0, 0, 0, 0, 30, null),
    ACS_LARGE(C2808R.layout.ad_tcx_native_large_acs, 0, 0, 0, 0, 30, null);
    
    private final int bannerLayout;
    private final int emptyLayout;
    private final int houseLayout;
    private final int nativeLayout;
    private final int placeholderLayout;

    AdLayoutTypeX(int i, int i2, int i3, int i4, int i5) {
        this.nativeLayout = i;
        this.bannerLayout = i2;
        this.houseLayout = i3;
        this.emptyLayout = i4;
        this.placeholderLayout = i5;
    }

    /* synthetic */ AdLayoutTypeX(int i, int i2, int i3, int i4, int i5, int i6, f fVar) {
        this(i, (i6 & 2) != 0 ? 0 : i2, (i6 & 4) != 0 ? i : i3, (i6 & 8) != 0 ? C2808R.layout.ad_empty : i4, (i6 & 16) != 0 ? 0 : i5);
    }

    @Override // p193e.p194a.p852i.AbstractC15191g
    public int getBannerLayout() {
        return this.bannerLayout;
    }

    @Override // p193e.p194a.p852i.AbstractC15191g
    public int getEmptyLayout() {
        return this.emptyLayout;
    }

    @Override // p193e.p194a.p852i.AbstractC15191g
    public int getHouseLayout() {
        return this.houseLayout;
    }

    @Override // p193e.p194a.p852i.AbstractC15191g
    public int getNativeLayout() {
        return this.nativeLayout;
    }

    @Override // p193e.p194a.p852i.AbstractC15191g
    public int getPlaceholderLayout() {
        return this.placeholderLayout;
    }
}
