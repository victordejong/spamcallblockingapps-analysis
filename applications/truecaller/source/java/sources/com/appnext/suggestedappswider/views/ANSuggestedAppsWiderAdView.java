package com.appnext.suggestedappswider.views;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.appnext.base.C0472a;
import com.appnext.core.AppnextError;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer;
import com.appnext.suggestedappswider.models.C0690a;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderModel;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderViewModel;
import com.appnext.suggestedappswider.p023b.C0682a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001:\u0001(B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0002J\b\u0010\u0019\u001a\u00020\u0012H$J\u0006\u0010\u001a\u001a\u00020\u0007J\b\u0010\u001b\u001a\u00020\u0012H$J\u0006\u0010\u001c\u001a\u00020\u0007J\u001a\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0016\u0010!\u001a\u00020\u001e2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H$J\b\u0010#\u001a\u00020\u001eH$J\b\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H&R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006)"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;", "Landroid/widget/FrameLayout;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "anCollectionAdViewCallbacks", "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;", "getAnCollectionAdViewCallbacks", "()Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;", "setAnCollectionAdViewCallbacks", "(Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;)V", "viewHeightPixel", "viewWidthPixel", "convertDpToPx", "", "dp", "convertSuggestedAppsWiderModelsToSuggestedAppsWiderViewModels", "", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "suggestedAppsWiderModels", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;", "getViewHeightDP", "getViewHeightPixel", "getViewWidthDP", "getViewWidthPixel", "load", "", "appnextSuggestedAppsWiderDataContainer", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;", "loadAds", "suggestedAppsWiderViewModels", "onError", "setSuggestedAppsBackgroundColor", "setTitle", "title", "", "ANCollectionAdViewCallbacks", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView.class */
public abstract class ANSuggestedAppsWiderAdView extends FrameLayout {

    /* renamed from: hu */
    private final int f2136hu;

    /* renamed from: hv */
    private final int f2137hv;

    /* renamed from: hw */
    private ANCollectionAdViewCallbacks f2138hw;

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;", "", "onAdClicked", "", "packageName", "", "onAdGotImpression", "onAdsLoadedSuccessfully", "onError", "error", "Lcom/appnext/core/AppnextError;", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks.class */
    public interface ANCollectionAdViewCallbacks {
        void onAdClicked(String str);

        void onAdGotImpression(String str);

        void onAdsLoadedSuccessfully();

        void onError(AppnextError appnextError);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ANSuggestedAppsWiderAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        int m42102a = (int) m42102a(getViewWidthDP());
        this.f2136hu = m42102a;
        int m42102a2 = (int) m42102a(getViewHeightDP());
        this.f2137hv = m42102a2;
        setLayoutParams(new FrameLayout.LayoutParams(m42102a, m42102a2));
        try {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            gradientDrawable.setCornerRadius(30.0f);
            setBackground(gradientDrawable);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$setSuggestedAppsBackgroundColor", th);
        }
    }

    public /* synthetic */ ANSuggestedAppsWiderAdView(Context context, AttributeSet attributeSet, int i, int i2, f fVar) {
        this(context, null, 0);
    }

    /* renamed from: a */
    private final float m42102a(float f) {
        return f * getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    public final void m42101a(AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer, ANCollectionAdViewCallbacks aNCollectionAdViewCallbacks) {
        ArrayList arrayList;
        this.f2138hw = aNCollectionAdViewCallbacks;
        if (appnextSuggestedAppsWiderDataContainer == null || !(appnextSuggestedAppsWiderDataContainer instanceof C0690a)) {
            aNCollectionAdViewCallbacks.onError(new AppnextError(AppnextError.INTERNAL_ERROR));
            return;
        }
        C0682a c0682a = C0682a.f2126hl;
        List<SuggestedAppsWiderModel> m42123M = C0682a.m42123M(((C0690a) appnextSuggestedAppsWiderDataContainer).m42103bt());
        if (m42123M == null) {
            aNCollectionAdViewCallbacks.onError(new AppnextError(AppnextError.INTERNAL_ERROR));
            return;
        }
        if (m42123M.isEmpty()) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList();
            for (SuggestedAppsWiderModel suggestedAppsWiderModel : m42123M) {
                arrayList.add(new SuggestedAppsWiderViewModel(suggestedAppsWiderModel));
            }
        }
        m42100k(arrayList);
        aNCollectionAdViewCallbacks.onAdsLoadedSuccessfully();
    }

    public final ANCollectionAdViewCallbacks getAnCollectionAdViewCallbacks() {
        return this.f2138hw;
    }

    public abstract float getViewHeightDP();

    public final int getViewHeightPixel() {
        return this.f2137hv;
    }

    public abstract float getViewWidthDP();

    public final int getViewWidthPixel() {
        return this.f2136hu;
    }

    /* renamed from: k */
    public abstract void m42100k(List<SuggestedAppsWiderViewModel> list);

    public final void setAnCollectionAdViewCallbacks(ANCollectionAdViewCallbacks aNCollectionAdViewCallbacks) {
        this.f2138hw = aNCollectionAdViewCallbacks;
    }

    public abstract void setTitle(String str);
}
