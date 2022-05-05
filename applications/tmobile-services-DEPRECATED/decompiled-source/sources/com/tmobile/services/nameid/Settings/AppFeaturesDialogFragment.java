package com.tmobile.services.nameid.Settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselIndicator;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselPageChangeListener;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselPagerAdapter;
import com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/tmobile/services/nameid/Settings/AppFeaturesDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment;", "getCarouselFragments", "()Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/widget/ImageView;", "closeButton", "Landroid/widget/ImageView;", "", "layoutResId", "I", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "tabIndicator", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/AppFeaturesDialogFragment.class */
public final class AppFeaturesDialogFragment extends DialogFragment {

    /* renamed from: f */
    private final int f12693f = C1517R.layout.fragment_app_features;

    /* renamed from: g */
    private ImageView f12694g;

    /* renamed from: h */
    private ViewPager f12695h;

    /* renamed from: i */
    private NameIDCarouselIndicator f12696i;

    /* renamed from: j */
    private HashMap f12697j;

    /* renamed from: H0 */
    private final List<FeatureDisplayFragment> m7483H0() {
        return SubscriptionHelper.m5309s(null) ? CollectionsKt__CollectionsKt.m2172i(new FeatureDisplayFragment.ScamBlock(), new FeatureDisplayFragment.Report(), new FeatureDisplayFragment.BlockVoicemail(), new FeatureDisplayFragment.Lookup(), new FeatureDisplayFragment.ManageCategories()) : CollectionsKt__CollectionsKt.m2172i(new FeatureDisplayFragment.ScamBlock(), new FeatureDisplayFragment.Report(), new FeatureDisplayFragment.CallerIdAppFeatures(false), new FeatureDisplayFragment.BlockVoicemail(), new FeatureDisplayFragment.Lookup(), new FeatureDisplayFragment.ManageCategories());
    }

    /* renamed from: G0 */
    public void m7484G0() {
        HashMap hashMap = this.f12697j;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, 16973834);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View view = inflater.inflate(this.f12693f, viewGroup, false);
        View findViewById = view.findViewById(C1517R.C1520id.app_features_close_button);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.app_features_close_button)");
        ImageView imageView = (ImageView) findViewById;
        this.f12694g = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.AppFeaturesDialogFragment$onCreateView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AppFeaturesDialogFragment.this.dismissAllowingStateLoss();
                }
            });
            View findViewById2 = view.findViewById(C1517R.C1520id.view_pager);
            Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.view_pager)");
            this.f12695h = (ViewPager) findViewById2;
            View findViewById3 = view.findViewById(C1517R.C1520id.tab_indicators);
            Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.tab_indicators)");
            this.f12696i = (NameIDCarouselIndicator) findViewById3;
            List<FeatureDisplayFragment> H0 = m7483H0();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
            NameIDCarouselPagerAdapter nameIDCarouselPagerAdapter = new NameIDCarouselPagerAdapter(childFragmentManager, H0);
            NameIDCarouselIndicator nameIDCarouselIndicator = this.f12696i;
            if (nameIDCarouselIndicator != null) {
                NameIDCarouselPageChangeListener nameIDCarouselPageChangeListener = new NameIDCarouselPageChangeListener(nameIDCarouselIndicator);
                ViewPager viewPager = this.f12695h;
                if (viewPager != null) {
                    viewPager.setAdapter(nameIDCarouselPagerAdapter);
                    ViewPager viewPager2 = this.f12695h;
                    if (viewPager2 != null) {
                        viewPager2.m16512c(nameIDCarouselPageChangeListener);
                        NameIDCarouselIndicator nameIDCarouselIndicator2 = this.f12696i;
                        if (nameIDCarouselIndicator2 != null) {
                            ViewPager viewPager3 = this.f12695h;
                            if (viewPager3 != null) {
                                nameIDCarouselIndicator2.setupWithViewPager(viewPager3);
                                NameIDCarouselIndicator nameIDCarouselIndicator3 = this.f12696i;
                                if (nameIDCarouselIndicator3 != null) {
                                    ViewPager viewPager4 = this.f12695h;
                                    if (viewPager4 != null) {
                                        nameIDCarouselIndicator3.m6189d(viewPager4.getCurrentItem());
                                        Intrinsics.m1831d(view, "view");
                                        return view;
                                    }
                                    Intrinsics.m1814u("viewPager");
                                    throw null;
                                }
                                Intrinsics.m1814u("tabIndicator");
                                throw null;
                            }
                            Intrinsics.m1814u("viewPager");
                            throw null;
                        }
                        Intrinsics.m1814u("tabIndicator");
                        throw null;
                    }
                    Intrinsics.m1814u("viewPager");
                    throw null;
                }
                Intrinsics.m1814u("viewPager");
                throw null;
            }
            Intrinsics.m1814u("tabIndicator");
            throw null;
        }
        Intrinsics.m1814u("closeButton");
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m7484G0();
    }
}
