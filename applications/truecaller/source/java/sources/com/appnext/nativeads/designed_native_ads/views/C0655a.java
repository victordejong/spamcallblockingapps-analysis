package com.appnext.nativeads.designed_native_ads.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.appnext.base.Appnext;
import com.appnext.base.C0472a;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.nativeads.C0635R;
import com.appnext.nativeads.designed_native_ads.AppnextDesignedNativeAdData;
import com.appnext.nativeads.designed_native_ads.DesignNativeAdsRequest;
import com.appnext.nativeads.designed_native_ads.interfaces.AppnextDesignedNativeAdViewCallbacks;
import com.appnext.nativeads.designed_native_ads.views.AbstractC0658b;
import java.lang.ref.WeakReference;
/* renamed from: com.appnext.nativeads.designed_native_ads.views.a */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/a.class */
public class C0655a extends FrameLayout {

    /* renamed from: gA */
    private String f2020gA;

    /* renamed from: gB */
    private int f2021gB;

    /* renamed from: gC */
    private int f2022gC;

    /* renamed from: gD */
    private boolean f2023gD;

    /* renamed from: gE */
    private boolean f2024gE;

    /* renamed from: gF */
    private boolean f2025gF;

    /* renamed from: gG */
    private boolean f2026gG;

    /* renamed from: gH */
    private int f2027gH;

    /* renamed from: gI */
    private int f2028gI;

    /* renamed from: gJ */
    private int f2029gJ;

    /* renamed from: gK */
    private boolean f2030gK;

    /* renamed from: gL */
    private AppnextDesignedNativeAdViewCallbacks f2031gL;

    /* renamed from: gz */
    private AbstractC0658b f2032gz;

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/a$a.class */
    public static final class C0657a implements AbstractC0658b.AbstractC0663a {

        /* renamed from: gQ */
        private WeakReference<AppnextDesignedNativeAdViewCallbacks> f2037gQ;

        public C0657a(AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
            this.f2037gQ = new WeakReference<>(appnextDesignedNativeAdViewCallbacks);
        }

        @Override // com.appnext.nativeads.designed_native_ads.views.AbstractC0658b.AbstractC0663a
        public final void onAdClicked(AppnextDesignedNativeAdData appnextDesignedNativeAdData) {
            AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks;
            WeakReference<AppnextDesignedNativeAdViewCallbacks> weakReference = this.f2037gQ;
            if (weakReference == null || (appnextDesignedNativeAdViewCallbacks = weakReference.get()) == null) {
                return;
            }
            appnextDesignedNativeAdViewCallbacks.onAdClicked(appnextDesignedNativeAdData);
        }

        @Override // com.appnext.nativeads.designed_native_ads.views.AbstractC0658b.AbstractC0663a
        public final void onAdsLoadedSuccessfully() {
            AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks;
            WeakReference<AppnextDesignedNativeAdViewCallbacks> weakReference = this.f2037gQ;
            if (weakReference == null || (appnextDesignedNativeAdViewCallbacks = weakReference.get()) == null) {
                return;
            }
            appnextDesignedNativeAdViewCallbacks.onAppnextAdsLoadedSuccessfully();
        }

        @Override // com.appnext.nativeads.designed_native_ads.views.AbstractC0658b.AbstractC0663a
        public final void onError(AppnextError appnextError) {
            AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks;
            WeakReference<AppnextDesignedNativeAdViewCallbacks> weakReference = this.f2037gQ;
            if (weakReference == null || (appnextDesignedNativeAdViewCallbacks = weakReference.get()) == null) {
                return;
            }
            appnextDesignedNativeAdViewCallbacks.onAppnextAdsError(appnextError);
        }
    }

    public C0655a(Context context) {
        this(context, null, 0);
    }

    public C0655a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0655a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2024gE = false;
        this.f2026gG = false;
        Appnext.init(context);
        m42177a(context, attributeSet);
    }

    public C0655a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2024gE = false;
        this.f2026gG = false;
        try {
            Appnext.init(context);
            m42177a(context, attributeSet);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$AppnextDesignedNativeAdViewProxy", th);
        }
    }

    /* renamed from: a */
    private void m42177a(Context context, AttributeSet attributeSet) {
        setBackgroundColor(0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0635R.styleable.AppnextDesignedNativeAdView, 0, 0);
            try {
                this.f2020gA = obtainStyledAttributes.getString(C0635R.styleable.AppnextDesignedNativeAdView_title);
                this.f2027gH = obtainStyledAttributes.getInteger(C0635R.styleable.AppnextDesignedNativeAdView_titleColor, 0);
                this.f2022gC = obtainStyledAttributes.getInteger(C0635R.styleable.AppnextDesignedNativeAdView_amountOfApps, 0);
                String string = obtainStyledAttributes.getString(C0635R.styleable.AppnextDesignedNativeAdView_presentAppTitles);
                boolean z = !TextUtils.isEmpty(string);
                this.f2024gE = z;
                if (z) {
                    this.f2023gD = Boolean.parseBoolean(string);
                }
                String string2 = obtainStyledAttributes.getString(C0635R.styleable.AppnextDesignedNativeAdView_localDirection);
                boolean z2 = !TextUtils.isEmpty(string2);
                this.f2026gG = z2;
                if (z2) {
                    this.f2025gF = Boolean.parseBoolean(string2);
                }
                this.f2021gB = obtainStyledAttributes.getColor(C0635R.styleable.AppnextDesignedNativeAdView_appTitletColor, 0);
                this.f2028gI = obtainStyledAttributes.getColor(C0635R.styleable.AppnextDesignedNativeAdView_backgroundColor, 0);
                this.f2029gJ = obtainStyledAttributes.getInteger(C0635R.styleable.AppnextDesignedNativeAdView_transparency, -1);
            } finally {
                try {
                } finally {
                }
            }
        }
        this.f2030gK = false;
    }

    public void load(final String str, final DesignNativeAdsRequest designNativeAdsRequest, int i, final AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        try {
            if (!C0551g.m42368k(getContext())) {
                if (appnextDesignedNativeAdViewCallbacks == null) {
                    return;
                }
                appnextDesignedNativeAdViewCallbacks.onAppnextAdsError(new AppnextError(AppnextError.CONNECTION_ERROR));
                return;
            }
            if (i > 0) {
                this.f2022gC = i;
            }
            this.f2031gL = appnextDesignedNativeAdViewCallbacks;
            d dVar = new d(getContext());
            this.f2032gz = dVar;
            if (dVar == null) {
                return;
            }
            dVar.m42161a(str, new AbstractC0658b.AbstractC0664b() { // from class: com.appnext.nativeads.designed_native_ads.views.a.1
                @Override // com.appnext.nativeads.designed_native_ads.views.AbstractC0658b.AbstractC0664b
                /* renamed from: bm */
                public final void mo42154bm() {
                    try {
                        C0655a.this.f2030gK = true;
                        if (C0655a.this.f2020gA != null) {
                            C0655a.this.f2032gz.setTitle(C0655a.this.f2020gA);
                        }
                        if (C0655a.this.f2027gH != 0) {
                            C0655a.this.f2032gz.setTitleTextColorForAdUnit(C0655a.this.f2027gH);
                        }
                        if (C0655a.this.f2022gC > 0 && C0655a.this.f2022gC <= 5) {
                            C0655a.this.f2032gz.setAmountOfApps(C0655a.this.f2022gC);
                        }
                        if (C0655a.this.f2024gE) {
                            C0655a.this.f2032gz.setPresentTitles(C0655a.this.f2023gD);
                        }
                        if (C0655a.this.f2026gG) {
                            C0655a.this.f2032gz.setLocalDirection(C0655a.this.f2025gF);
                        }
                        if (C0655a.this.f2021gB != 0) {
                            C0655a.this.f2032gz.setIconAppTitleTextColor(C0655a.this.f2021gB);
                        }
                        if (C0655a.this.f2028gI != 0) {
                            C0655a.this.f2032gz.setSuggestedBackgroundColor(C0655a.this.f2028gI);
                        }
                        if (C0655a.this.f2029gJ >= 0) {
                            C0655a.this.f2032gz.setTransparency(C0655a.this.f2029gJ);
                        }
                        C0655a.this.removeAllViews();
                        C0655a c0655a = C0655a.this;
                        c0655a.addView(c0655a.f2032gz);
                        C0655a.this.f2032gz.m42162a(str, designNativeAdsRequest, new C0657a(C0655a.this.f2031gL));
                    } catch (Throwable th) {
                        C0472a.m42577a("AppnextDesignedNativeAdViewProxy$load", th);
                        AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks2 = appnextDesignedNativeAdViewCallbacks;
                        if (appnextDesignedNativeAdViewCallbacks2 == null) {
                            return;
                        }
                        appnextDesignedNativeAdViewCallbacks2.onAppnextAdsError(new AppnextError(AppnextError.INTERNAL_ERROR));
                    }
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$load", th);
            if (appnextDesignedNativeAdViewCallbacks == null) {
                return;
            }
            appnextDesignedNativeAdViewCallbacks.onAppnextAdsError(new AppnextError(AppnextError.INTERNAL_ERROR));
        }
    }

    public void load(String str, DesignNativeAdsRequest designNativeAdsRequest, AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        load(str, designNativeAdsRequest, 0, appnextDesignedNativeAdViewCallbacks);
    }

    public void setAppTitleColor(int i) {
        try {
            this.f2021gB = i;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setIconAppTitleTextColor(i);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setAppTitleColor", th);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        try {
            this.f2028gI = i;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setSuggestedBackgroundColor(i);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setBackgroundColor", th);
        }
    }

    public void setLocalDirection(boolean z) {
        try {
            this.f2025gF = z;
            this.f2026gG = true;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setLocalDirection(z);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setLocalDirection", th);
        }
    }

    public void setPresentAppTitles(boolean z) {
        try {
            this.f2023gD = z;
            this.f2024gE = true;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setPresentTitles(z);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setPresentAppTitles", th);
        }
    }

    public void setTitle(String str) {
        this.f2020gA = str;
        if (str == null || !this.f2030gK) {
            return;
        }
        this.f2032gz.setTitle(str);
    }

    public void setTitleColor(int i) {
        try {
            this.f2027gH = i;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setTitleTextColorForAdUnit(i);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setTitleColor", th);
        }
    }

    public void setTransparency(int i) {
        try {
            this.f2029gJ = i;
            AbstractC0658b abstractC0658b = this.f2032gz;
            if (abstractC0658b == null || !this.f2030gK) {
                return;
            }
            abstractC0658b.setTransparency(i);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextDesignedNativeAdViewProxy$setTransparency", th);
        }
    }
}
