package com.applovin.adview;

import android.content.Context;
import android.graphics.Color;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.impl.adview.C0969b;
import com.applovin.impl.sdk.C1479t;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinAdView.class */
public class AppLovinAdView extends RelativeLayout {
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";

    /* renamed from: a */
    private C0969b f3240a;

    public AppLovinAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7216a(null, null, null, context, attributeSet);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinAdSize, (String) null, context);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context);
        m7216a(appLovinAdSize, str, null, context, null);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinSdk, appLovinAdSize, null, context);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context.getApplicationContext());
        m7216a(appLovinAdSize, str, appLovinSdk, context, null);
    }

    /* renamed from: a */
    private void m7217a(AttributeSet attributeSet, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int applyDimension = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(-16777216);
        textView.setText("AppLovin Ad");
        textView.setGravity(17);
        addView(textView, i, applyDimension);
    }

    /* renamed from: a */
    private void m7216a(AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            m7217a(attributeSet, context);
            return;
        }
        C0969b c0969b = new C0969b();
        this.f3240a = c0969b;
        c0969b.m6944a(this, context, appLovinAdSize, str, appLovinSdk, attributeSet);
    }

    public void destroy() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6917f();
        }
    }

    public C0969b getController() {
        return this.f3240a;
    }

    public AppLovinAdSize getSize() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            return c0969b.m6928b();
        }
        return null;
    }

    public String getZoneId() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            return c0969b.m6923c();
        }
        return null;
    }

    public void loadNextAd() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6949a();
        } else {
            C1479t.m5109g("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6911i();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6909j();
        }
        super.onDetachedFromWindow();
    }

    public void pause() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6921d();
        }
    }

    public void renderAd(AppLovinAd appLovinAd) {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6935a(appLovinAd);
        }
    }

    public void resume() {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6919e();
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6933a(appLovinAdClickListener);
        }
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6932a(appLovinAdDisplayListener);
        }
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6931a(appLovinAdLoadListener);
        }
    }

    public void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        C0969b c0969b = this.f3240a;
        if (c0969b != null) {
            c0969b.m6942a(appLovinAdViewEventListener);
        }
    }

    @Override // android.view.View
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinAdView{zoneId='");
        m8752j.append(getZoneId());
        m8752j.append("\", size=");
        m8752j.append(getSize());
        m8752j.append('}');
        return m8752j.toString();
    }
}
