package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.ads.AdSettings;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdLayout;
import com.mopub.common.Preconditions;
import com.mopub.nativeads.FacebookNative;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer.class */
public class FacebookAdRenderer implements MoPubAdRenderer<FacebookNative.C16917a> {

    /* renamed from: a */
    final WeakHashMap<View, C16916a> f59837a;

    /* renamed from: b */
    private final AdSettings f59838b;

    /* renamed from: c */
    private final FacebookViewBinder f59839c;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder.class */
    public static class FacebookViewBinder {

        /* renamed from: a */
        final int f59840a;

        /* renamed from: b */
        final int f59841b;

        /* renamed from: c */
        final int f59842c;

        /* renamed from: d */
        final int f59843d;

        /* renamed from: e */
        final int f59844e;

        /* renamed from: f */
        final Map<String, Integer> f59845f;

        /* renamed from: g */
        final int f59846g;

        /* renamed from: h */
        final int f59847h;

        /* renamed from: i */
        final int f59848i;

        /* renamed from: j */
        final int f59849j;

        /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder.class */
        public static class Builder {

            /* renamed from: a */
            private final int f59850a;

            /* renamed from: b */
            private int f59851b;

            /* renamed from: c */
            private int f59852c;

            /* renamed from: d */
            private int f59853d;

            /* renamed from: e */
            private int f59854e;

            /* renamed from: f */
            private Map<String, Integer> f59855f;

            /* renamed from: g */
            private int f59856g;

            /* renamed from: h */
            private int f59857h;

            /* renamed from: i */
            private int f59858i;

            /* renamed from: j */
            private int f59859j;

            public Builder(int i) {
                this.f59855f = Collections.emptyMap();
                this.f59850a = i;
                this.f59855f = new HashMap();
            }

            public final Builder adChoicesRelativeLayoutId(int i) {
                this.f59854e = i;
                return this;
            }

            public Builder adIconViewId(int i) {
                this.f59857h = i;
                return this;
            }

            public final Builder addExtra(String str, int i) {
                this.f59855f.put(str, Integer.valueOf(i));
                return this;
            }

            public Builder advertiserNameId(int i) {
                this.f59858i = i;
                return this;
            }

            public FacebookViewBinder build() {
                return new FacebookViewBinder(this);
            }

            public final Builder callToActionId(int i) {
                this.f59853d = i;
                return this;
            }

            public final Builder extras(Map<String, Integer> map) {
                this.f59855f = new HashMap(map);
                return this;
            }

            public Builder mediaViewId(int i) {
                this.f59856g = i;
                return this;
            }

            public Builder sponsoredNameId(int i) {
                this.f59859j = i;
                return this;
            }

            public final Builder textId(int i) {
                this.f59852c = i;
                return this;
            }

            public final Builder titleId(int i) {
                this.f59851b = i;
                return this;
            }
        }

        private FacebookViewBinder(Builder builder) {
            this.f59840a = builder.f59850a;
            this.f59841b = builder.f59851b;
            this.f59842c = builder.f59852c;
            this.f59843d = builder.f59853d;
            this.f59844e = builder.f59854e;
            this.f59845f = builder.f59855f;
            this.f59846g = builder.f59856g;
            this.f59847h = builder.f59857h;
            this.f59848i = builder.f59858i;
            this.f59849j = builder.f59859j;
        }
    }

    /* renamed from: com.mopub.nativeads.FacebookAdRenderer$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$a.class */
    public static final class C16916a {

        /* renamed from: a */
        View f59860a;

        /* renamed from: b */
        TextView f59861b;

        /* renamed from: c */
        TextView f59862c;

        /* renamed from: d */
        TextView f59863d;

        /* renamed from: e */
        RelativeLayout f59864e;

        /* renamed from: f */
        MediaView f59865f;

        /* renamed from: g */
        MediaView f59866g;

        /* renamed from: h */
        TextView f59867h;

        /* renamed from: i */
        TextView f59868i;

        C16916a() {
        }

        public final RelativeLayout getAdChoicesContainer() {
            return this.f59864e;
        }

        public final MediaView getAdIconView() {
            return this.f59866g;
        }

        public final TextView getAdvertiserNameView() {
            return this.f59867h;
        }

        public final TextView getCallToActionView() {
            return this.f59863d;
        }

        public final View getMainView() {
            return this.f59860a;
        }

        public final MediaView getMediaView() {
            return this.f59865f;
        }

        public final TextView getSponsoredLabelView() {
            return this.f59868i;
        }

        public final TextView getTextView() {
            return this.f59862c;
        }

        public final TextView getTitleView() {
            return this.f59861b;
        }
    }

    public FacebookAdRenderer(FacebookViewBinder facebookViewBinder, AdSettings adSettings) {
        this.f59839c = facebookViewBinder;
        this.f59837a = new WeakHashMap<>();
        this.f59838b = adSettings;
    }

    public FacebookAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this(new FacebookViewBinder.Builder(viewBinder.f60117a).titleId(viewBinder.f60118b).textId(viewBinder.f60119c).callToActionId(viewBinder.f60120d).mediaViewId(viewBinder.f60121e).adIconViewId(viewBinder.f60122f).adChoicesRelativeLayoutId(2131361970).extras(viewBinder.f60125i).build(), adSettings);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context.getApplicationContext()).inflate(this.f59839c.f59840a, viewGroup, false);
        View findViewById = inflate.findViewById(this.f59839c.f59847h);
        if (findViewById == null) {
            return inflate;
        }
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            layoutParams2.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
            for (int i = 0; i < rules.length; i++) {
                layoutParams2.addRule(i, rules[i]);
            }
            findViewById.setVisibility(4);
        } else {
            findViewById.setVisibility(8);
        }
        MediaView mediaView = new MediaView(context.getApplicationContext());
        ViewGroup viewGroup2 = (ViewGroup) findViewById.getParent();
        int indexOfChild = viewGroup2.indexOfChild(findViewById);
        mediaView.setId(this.f59839c.f59847h);
        viewGroup2.addView(mediaView, indexOfChild + 1, layoutParams2);
        viewGroup2.removeView(findViewById);
        View findViewById2 = inflate.findViewById(this.f59839c.f59846g);
        if (findViewById2 == null) {
            return inflate;
        }
        ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(layoutParams3.width, layoutParams3.height);
        if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams3;
            layoutParams4.setMargins(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
        }
        if (layoutParams3 instanceof RelativeLayout.LayoutParams) {
            int[] rules2 = ((RelativeLayout.LayoutParams) layoutParams3).getRules();
            for (int i2 = 0; i2 < rules2.length; i2++) {
                layoutParams4.addRule(i2, rules2[i2]);
            }
            findViewById2.setVisibility(4);
        } else {
            findViewById2.setVisibility(8);
        }
        MediaView mediaView2 = new MediaView(context.getApplicationContext());
        ViewGroup viewGroup3 = (ViewGroup) findViewById2.getParent();
        int indexOfChild2 = viewGroup3.indexOfChild(viewGroup3);
        mediaView2.setId(this.f59839c.f59846g);
        viewGroup3.addView(mediaView2, indexOfChild2 + 1, layoutParams4);
        viewGroup3.removeView(viewGroup3);
        return inflate;
    }

    public void renderAdView(View view, FacebookNative.C16917a c16917a) {
        C16916a c16916a = this.f59837a.get(view);
        C16916a c16916a2 = c16916a;
        if (c16916a == null) {
            FacebookViewBinder facebookViewBinder = this.f59839c;
            if (view == null || facebookViewBinder == null) {
                c16916a2 = new C16916a();
            } else {
                c16916a2 = new C16916a();
                c16916a2.f59860a = view;
                c16916a2.f59861b = (TextView) view.findViewById(facebookViewBinder.f59841b);
                c16916a2.f59862c = (TextView) view.findViewById(facebookViewBinder.f59842c);
                c16916a2.f59863d = (TextView) view.findViewById(facebookViewBinder.f59843d);
                c16916a2.f59864e = (RelativeLayout) view.findViewById(facebookViewBinder.f59844e);
                c16916a2.f59865f = (MediaView) view.findViewById(facebookViewBinder.f59846g);
                c16916a2.f59866g = (MediaView) view.findViewById(facebookViewBinder.f59847h);
                c16916a2.f59867h = (TextView) view.findViewById(facebookViewBinder.f59848i);
                c16916a2.f59868i = (TextView) view.findViewById(facebookViewBinder.f59849j);
            }
            this.f59837a.put(view, c16916a2);
        }
        NativeRendererHelper.addTextView(c16916a2.getTitleView(), c16917a.getTitle());
        NativeRendererHelper.addTextView(c16916a2.getTextView(), c16917a.getText());
        NativeRendererHelper.addTextView(c16916a2.getCallToActionView(), c16917a.getCallToAction());
        NativeRendererHelper.addTextView(c16916a2.getAdvertiserNameView(), c16917a.getAdvertiserName());
        NativeRendererHelper.addTextView(c16916a2.getSponsoredLabelView(), c16917a.getSponsoredName());
        RelativeLayout adChoicesContainer = c16916a2.getAdChoicesContainer();
        TextView callToActionView = CallAppRemoteConfigManager.get().m28698c("facebookCTAOnlyClick") ? c16916a2.getCallToActionView() : c16916a2.getMainView();
        MediaView mediaView = c16916a2.getMediaView();
        MediaView adIconView = c16916a2.getAdIconView();
        FacebookNative.m6220a(callToActionView, c16917a.f59872a, mediaView, adIconView);
        if (mediaView != null || adIconView != null) {
            c16917a.f59873b = new ArrayList();
            if (mediaView != null) {
                c16917a.f59873b.add(mediaView);
            }
            if (adIconView != null) {
                c16917a.f59873b.add(adIconView);
            }
        }
        boolean z = true;
        if (adChoicesContainer != null) {
            adChoicesContainer.removeAllViews();
            NativeAdLayout nativeAdLayout = null;
            if (c16916a2.f59860a instanceof NativeAdLayout) {
                nativeAdLayout = (NativeAdLayout) c16916a2.f59860a;
            }
            AdOptionsView adOptionsView = new AdOptionsView(adChoicesContainer.getContext().getApplicationContext(), c16917a.f59872a, nativeAdLayout);
            ViewGroup.LayoutParams layoutParams = adChoicesContainer.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams).addRule(21);
            }
            adOptionsView.setSingleIcon(true);
            adChoicesContainer.addView(adOptionsView);
        }
        NativeRendererHelper.updateExtras(c16916a2.getMainView(), this.f59839c.f59845f, c16917a.getExtras());
        Boolean bool = (Boolean) c16917a.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        c16917a.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f59838b;
        if (bool == null) {
            z = false;
        }
        CallAppMoPubStaticNativeAdRenderer.m6234a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof FacebookNative.C16917a;
    }
}
