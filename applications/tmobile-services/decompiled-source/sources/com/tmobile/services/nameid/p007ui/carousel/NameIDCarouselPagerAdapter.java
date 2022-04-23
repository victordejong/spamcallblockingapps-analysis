package com.tmobile.services.nameid.p007ui.carousel;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselPagerAdapter;", "Landroidx/fragment/app/FragmentPagerAdapter;", "", "getCount", "()I", "position", "Landroidx/fragment/app/Fragment;", "getItem", "(I)Landroidx/fragment/app/Fragment;", "", "carouselItems", "Ljava/util/List;", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "<init>", "(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.NameIDCarouselPagerAdapter */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/NameIDCarouselPagerAdapter.class */
public final class NameIDCarouselPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: a */
    private final List<Fragment> f13918a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NameIDCarouselPagerAdapter(@NotNull FragmentManager fragmentManager, @NotNull List<? extends Fragment> carouselItems) {
        super(fragmentManager);
        Intrinsics.m1830e(fragmentManager, "fragmentManager");
        Intrinsics.m1830e(carouselItems, "carouselItems");
        this.f13918a = carouselItems;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f13918a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    @NotNull
    public Fragment getItem(int i) {
        return this.f13918a.get(i);
    }
}
