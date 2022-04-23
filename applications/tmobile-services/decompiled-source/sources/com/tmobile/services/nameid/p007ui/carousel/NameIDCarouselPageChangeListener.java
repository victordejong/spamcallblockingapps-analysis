package com.tmobile.services.nameid.p007ui.carousel;

import androidx.viewpager.widget.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u0006R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselPageChangeListener;", "androidx/viewpager/widget/ViewPager$OnPageChangeListener", "", "state", "", "onPageScrollStateChanged", "(I)V", "position", "", "positionOffset", "positionOffsetPixels", "onPageScrolled", "(IFI)V", "onPageSelected", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "indicator", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "<init>", "(Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.NameIDCarouselPageChangeListener */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/NameIDCarouselPageChangeListener.class */
public class NameIDCarouselPageChangeListener implements ViewPager.OnPageChangeListener {

    /* renamed from: a */
    private final NameIDCarouselIndicator f13917a;

    public NameIDCarouselPageChangeListener(@NotNull NameIDCarouselIndicator indicator) {
        Intrinsics.m1830e(indicator, "indicator");
        this.f13917a = indicator;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.f13917a.m6189d(i);
    }
}
