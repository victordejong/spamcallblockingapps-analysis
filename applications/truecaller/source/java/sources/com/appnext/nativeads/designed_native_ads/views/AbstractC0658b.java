package com.appnext.nativeads.designed_native_ads.views;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.appnext.base.C0472a;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.core.C0555i;
import com.appnext.core.SettingsManager;
import com.appnext.nativeads.C0635R;
import com.appnext.nativeads.designed_native_ads.AppnextDesignedNativeAdData;
import com.appnext.nativeads.designed_native_ads.C0643a;
import com.appnext.nativeads.designed_native_ads.C0647c;
import com.appnext.nativeads.designed_native_ads.C0648d;
import com.appnext.nativeads.designed_native_ads.DesignNativeAd;
import com.appnext.nativeads.designed_native_ads.DesignNativeAdsRequest;
import com.appnext.nativeads.designed_native_ads.views.C0665c;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.appnext.nativeads.designed_native_ads.views.b */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/b.class */
public abstract class AbstractC0658b extends LinearLayout implements C0643a.AbstractC0646a {

    /* renamed from: aM */
    private Context f2038aM;

    /* renamed from: gR */
    private C0643a f2039gR;

    /* renamed from: gS */
    private C0648d f2040gS;

    /* renamed from: gT */
    private ImageView f2041gT;

    /* renamed from: gU */
    private int f2042gU;

    /* renamed from: gV */
    private AbstractC0663a f2043gV;

    /* renamed from: gp */
    private String f2044gp;

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.b$2 */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/b$2.class */
    public final class C06602 implements C0665c.AbstractC0667a {

        /* renamed from: gY */
        public final /* synthetic */ DesignNativeAd f2048gY;

        public C06602(DesignNativeAd designNativeAd) {
            AbstractC0658b.this = r4;
            this.f2048gY = designNativeAd;
        }

        @Override // com.appnext.nativeads.designed_native_ads.views.C0665c.AbstractC0667a
        /* renamed from: f */
        public final void mo42151f(int i) {
            try {
                AbstractC0658b.this.f2040gS.m42188b(this.f2048gY, i);
                AbstractC0658b.this.f2040gS.m42192a(this.f2048gY, i);
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdView$register", th);
            }
        }
    }

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.b$3 */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/b$3.class */
    public final class View$OnClickListenerC06613 implements View.OnClickListener {

        /* renamed from: gY */
        public final /* synthetic */ DesignNativeAd f2050gY;

        public View$OnClickListenerC06613(DesignNativeAd designNativeAd) {
            AbstractC0658b.this = r4;
            this.f2050gY = designNativeAd;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                if (AbstractC0658b.this.f2043gV != null) {
                    AbstractC0658b.this.f2043gV.onAdClicked(new AppnextDesignedNativeAdData(this.f2050gY.getAdPackage(), this.f2050gY.getAdTitle(), System.currentTimeMillis()));
                }
                AbstractC0658b.this.f2040gS.m42193a(this.f2050gY);
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdView$register", th);
            }
        }
    }

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.b$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/b$a.class */
    public interface AbstractC0663a {
        void onAdClicked(AppnextDesignedNativeAdData appnextDesignedNativeAdData);

        void onAdsLoadedSuccessfully();

        void onError(AppnextError appnextError);
    }

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.b$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/b$b.class */
    public interface AbstractC0664b {
        /* renamed from: bm */
        void mo42154bm();
    }

    public AbstractC0658b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2038aM = context;
        try {
            setVisibility(8);
            LinearLayout.inflate(this.f2038aM, C0635R.layout.design_native_ads_layout, this);
            setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (m42158bn() * getResources().getDisplayMetrics().density)));
            setSuggestedAppsBackgroundColor(-1);
            this.f2041gT = (ImageView) findViewById(C0635R.C0637id.privacy_icon);
            ((FrameLayout) findViewById(C0635R.C0637id.design_native_ads_container)).addView(((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(getContentResource(), (ViewGroup) null), new LinearLayout.LayoutParams(-1, -1));
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$buildView", th);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m42163a(AbstractC0658b abstractC0658b) {
        try {
            abstractC0658b.setTitle(C0647c.m42194bg().m42476y("title"));
            abstractC0658b.setTitleTextColor(Color.parseColor(C0647c.m42194bg().m42476y("title_text_color")));
            abstractC0658b.setAmountOfApps(Integer.parseInt(C0647c.m42194bg().m42476y("amount_of_icons")));
            new StringBuilder("designed - amount = ").append(abstractC0658b.f2042gU);
            abstractC0658b.m42160a(Boolean.parseBoolean(C0647c.m42194bg().m42476y("present_titles")));
            abstractC0658b.setIconAppTitleTextColor(Color.parseColor(C0647c.m42194bg().m42476y("app_title_text_color")));
            abstractC0658b.setLocalDirection(Boolean.parseBoolean(C0647c.m42194bg().m42476y("local_direction")));
            abstractC0658b.setSuggestedBackgroundColor(Color.parseColor(C0647c.m42194bg().m42476y("background_color")));
            abstractC0658b.setTransparency(Integer.parseInt(C0647c.m42194bg().m42476y("transparency")));
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$initParameters", th);
        }
    }

    private void setPrivacyIcon(final AppnextAd appnextAd) {
        findViewById(C0635R.C0637id.privacy_icon_container).setOnClickListener(new View.OnClickListener() { // from class: com.appnext.nativeads.designed_native_ads.views.b.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(C0551g.m42375e(appnextAd)));
                    intent.setFlags(268435456);
                    AbstractC0658b.this.getContext().startActivity(intent);
                } catch (Throwable th) {
                    C0472a.m42577a("DesignedNativeAdView$buildView", th);
                }
            }
        });
        if (C0555i.m42363a(appnextAd, C0647c.m42194bg())) {
            C0555i.m42364a(getContext(), this.f2041gT);
        } else {
            this.f2041gT.setImageResource(C0635R.C0636drawable.apnxt_na_i_icon_dark);
        }
    }

    private void setSuggestedAppsBackgroundColor(int i) {
        try {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(i);
            gradientDrawable.setCornerRadius(30.0f);
            setBackground(gradientDrawable);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$setSuggestedAppsBackgroundColor", th);
        }
    }

    /* renamed from: a */
    public final void m42162a(String str, DesignNativeAdsRequest designNativeAdsRequest, AbstractC0663a abstractC0663a) {
        try {
            this.f2043gV = abstractC0663a;
            this.f2044gp = str;
            this.f2039gR.m42199a(this.f2038aM, str, designNativeAdsRequest, this.f2042gU);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$load", th);
        }
    }

    /* renamed from: a */
    public final void m42161a(String str, final AbstractC0664b abstractC0664b) {
        C0643a c0643a = new C0643a();
        this.f2039gR = c0643a;
        c0643a.m42198a(this);
        C0647c.m42194bg().m42483a(getContext().getApplicationContext(), str, new SettingsManager.ConfigCallback() { // from class: com.appnext.nativeads.designed_native_ads.views.b.1
            @Override // com.appnext.core.SettingsManager.ConfigCallback
            public final void error(String str2) {
                try {
                    AbstractC0658b.m42163a(AbstractC0658b.this);
                    AbstractC0664b abstractC0664b2 = abstractC0664b;
                    if (abstractC0664b2 == null) {
                        return;
                    }
                    abstractC0664b2.mo42154bm();
                } catch (Throwable th) {
                    C0472a.m42577a("DesignedNativeAdView$init", th);
                }
            }

            @Override // com.appnext.core.SettingsManager.ConfigCallback
            public final void loaded(HashMap<String, Object> hashMap) {
                try {
                    AbstractC0658b.m42163a(AbstractC0658b.this);
                    AbstractC0664b abstractC0664b2 = abstractC0664b;
                    if (abstractC0664b2 == null) {
                        return;
                    }
                    abstractC0664b2.mo42154bm();
                } catch (Throwable th) {
                    C0472a.m42577a("DesignedNativeAdView$init", th);
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void m42160a(boolean z);

    /* renamed from: bn */
    public abstract int m42158bn();

    @Override // com.appnext.nativeads.designed_native_ads.C0643a.AbstractC0646a
    /* renamed from: e */
    public final void mo42156e(List<DesignNativeAd> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    setVisibility(0);
                    setPrivacyIcon((AppnextAd) list.get(0));
                    this.f2040gS = new C0648d(this.f2038aM, list, this.f2044gp);
                    m42155g(list);
                    AbstractC0663a abstractC0663a = this.f2043gV;
                    if (abstractC0663a == null) {
                        return;
                    }
                    abstractC0663a.onAdsLoadedSuccessfully();
                    return;
                }
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdView$onLoaded", th);
                return;
            }
        }
        setVisibility(8);
        AbstractC0663a abstractC0663a2 = this.f2043gV;
        if (abstractC0663a2 != null) {
            abstractC0663a2.onError(new AppnextError(AppnextError.INTERNAL_ERROR));
        }
    }

    /* renamed from: g */
    public abstract void m42155g(List<DesignNativeAd> list);

    public abstract int getContentResource();

    @Override // com.appnext.nativeads.designed_native_ads.C0643a.AbstractC0646a
    public final void onError(AppnextError appnextError) {
        try {
            setVisibility(8);
            AbstractC0663a abstractC0663a = this.f2043gV;
            if (abstractC0663a == null) {
                return;
            }
            abstractC0663a.onError(appnextError);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$onError", th);
        }
    }

    public void setAmountOfApps(int i) {
        this.f2042gU = i;
    }

    public void setIconAppTitleTextColor(int i) {
        setIconTitleTextColor(i);
    }

    public abstract void setIconTitleTextColor(int i);

    public void setLocalDirection(boolean z) {
        try {
            if (z) {
                setLayoutDirection(3);
            } else {
                setLayoutDirection(0);
            }
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$setLocalDirection", th);
        }
    }

    public void setPresentTitles(boolean z) {
        m42160a(z);
    }

    public void setSuggestedBackgroundColor(int i) {
        setSuggestedAppsBackgroundColor(i);
    }

    public void setTitle(String str) {
        setTitleText(str);
    }

    public abstract void setTitleText(String str);

    public void setTitleTextColor(int i) {
        setTitleTextColorForAdUnit(i);
    }

    public abstract void setTitleTextColorForAdUnit(int i);

    public void setTransparency(int i) {
        try {
            float min = Math.min(100, i);
            float f = min;
            if (min < 0.0f) {
                f = 0.0f;
            }
            setAlpha(f / 100.0f);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdView$setTransparency", th);
        }
    }
}
