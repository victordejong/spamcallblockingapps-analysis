package com.applovin.mediation.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.MaxAdViewImpl;
import com.applovin.impl.sdk.utils.C1486b;
import com.applovin.impl.sdk.utils.C1536p;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxAdView.class */
public class MaxAdView extends RelativeLayout {

    /* renamed from: a */
    private MaxAdViewImpl f5786a;

    /* renamed from: b */
    private View f5787b;

    /* renamed from: c */
    private int f5788c;

    public MaxAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaxAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String m5096a = C1486b.m5096a(context, attributeSet, AppLovinAdView.NAMESPACE, "adUnitId");
        String m5096a2 = C1486b.m5096a(context, attributeSet, AppLovinAdView.NAMESPACE, "adFormat");
        MaxAdFormat formatFromString = StringUtils.isValidString(m5096a2) ? MaxAdFormat.formatFromString(m5096a2) : C1486b.m5097a(context);
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 49);
        if (m5096a != null) {
            if (TextUtils.isEmpty(m5096a)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            m4882a(m5096a, formatFromString, attributeIntValue, AppLovinSdk.getInstance(context), context);
            return;
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public MaxAdView(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, Context context) {
        this(str, maxAdFormat, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, AppLovinSdk appLovinSdk, Context context) {
        super(context.getApplicationContext());
        AbstractC1078a.logApiCall("MaxAdView", "MaxAdView(adUnitId=" + str + ", adFormat=" + maxAdFormat + ", sdk=" + appLovinSdk + ")");
        m4882a(str, maxAdFormat, 49, appLovinSdk, context);
    }

    public MaxAdView(String str, AppLovinSdk appLovinSdk, Context context) {
        this(str, C1486b.m5097a(context), appLovinSdk, context);
    }

    /* renamed from: a */
    private void m4883a(MaxAdFormat maxAdFormat, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int applyDimension = maxAdFormat == MaxAdFormat.MREC ? (int) TypedValue.applyDimension(1, maxAdFormat.getSize().getWidth(), displayMetrics) : displayMetrics.widthPixels;
        int applyDimension2 = (int) TypedValue.applyDimension(1, maxAdFormat.getSize().getHeight(), displayMetrics);
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(-16777216);
        textView.setText("AppLovin MAX Ad");
        textView.setGravity(17);
        addView(textView, applyDimension, applyDimension2);
    }

    /* renamed from: a */
    private void m4882a(String str, MaxAdFormat maxAdFormat, int i, AppLovinSdk appLovinSdk, Context context) {
        if (isInEditMode()) {
            m4883a(maxAdFormat, context);
            return;
        }
        View view = new View(context.getApplicationContext());
        this.f5787b = view;
        view.setBackgroundColor(0);
        addView(this.f5787b);
        this.f5787b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f5788c = getVisibility();
        this.f5786a = new MaxAdViewImpl(str.trim(), maxAdFormat, this, this.f5787b, appLovinSdk.coreSdk, context);
        setGravity(i);
        if (getBackground() instanceof ColorDrawable) {
            setBackgroundColor(((ColorDrawable) getBackground()).getColor());
        }
        super.setBackgroundColor(0);
    }

    public void destroy() {
        this.f5786a.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.f5786a.getAdFormat();
    }

    public String getAdUnitId() {
        return this.f5786a.getAdUnitId();
    }

    public String getPlacement() {
        return this.f5786a.getPlacement();
    }

    public void loadAd() {
        this.f5786a.loadAd();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("onWindowVisibilityChanged(visibility=" + i + ")");
        if (this.f5786a != null && C1536p.m4948a(this.f5788c, i)) {
            this.f5786a.onWindowVisibilityChanged(i);
        }
        this.f5788c = i;
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setAlpha(alpha=" + f + ")");
        View view = this.f5787b;
        if (view != null) {
            view.setAlpha(f);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setBackgroundColor(color=" + i + ")");
        MaxAdViewImpl maxAdViewImpl2 = this.f5786a;
        if (maxAdViewImpl2 != null) {
            maxAdViewImpl2.setPublisherBackgroundColor(i);
        }
        View view = this.f5787b;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setCustomPostbackData(String str) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setCustomPostbackData(value=" + str + ")");
        this.f5786a.setCustomPostbackData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f5786a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdViewAdListener maxAdViewAdListener) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setListener(listener=" + maxAdViewAdListener + ")");
        this.f5786a.setListener(maxAdViewAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f5786a.setLocalExtraParameter(str, obj);
    }

    public void setPlacement(String str) {
        this.f5786a.setPlacement(str);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        maxAdViewImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f5786a.setRevenueListener(maxAdRevenueListener);
    }

    public void startAutoRefresh() {
        this.f5786a.startAutoRefresh();
    }

    public void stopAutoRefresh() {
        this.f5786a.stopAutoRefresh();
    }

    @Override // android.view.View
    public String toString() {
        MaxAdViewImpl maxAdViewImpl = this.f5786a;
        return maxAdViewImpl != null ? maxAdViewImpl.toString() : "MaxAdView";
    }
}
