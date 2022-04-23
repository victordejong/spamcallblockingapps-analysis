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
public class FacebookAdRenderer implements MoPubAdRenderer<FacebookNative.a> {

    /* renamed from: a  reason: collision with root package name */
    final WeakHashMap<View, a> f34486a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSettings f34487b;

    /* renamed from: c  reason: collision with root package name */
    private final FacebookViewBinder f34488c;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder.class */
    public static class FacebookViewBinder {

        /* renamed from: a  reason: collision with root package name */
        final int f34489a;

        /* renamed from: b  reason: collision with root package name */
        final int f34490b;

        /* renamed from: c  reason: collision with root package name */
        final int f34491c;

        /* renamed from: d  reason: collision with root package name */
        final int f34492d;
        final int e;
        final Map<String, Integer> f;
        final int g;
        final int h;
        final int i;
        final int j;

        /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder.class */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private final int f34493a;

            /* renamed from: b  reason: collision with root package name */
            private int f34494b;

            /* renamed from: c  reason: collision with root package name */
            private int f34495c;

            /* renamed from: d  reason: collision with root package name */
            private int f34496d;
            private int e;
            private Map<String, Integer> f;
            private int g;
            private int h;
            private int i;
            private int j;

            public Builder(int i) {
                this.f = Collections.emptyMap();
                this.f34493a = i;
                this.f = new HashMap();
            }

            public final Builder adChoicesRelativeLayoutId(int i) {
                this.e = i;
                return this;
            }

            public Builder adIconViewId(int i) {
                this.h = i;
                return this;
            }

            public final Builder addExtra(String str, int i) {
                this.f.put(str, Integer.valueOf(i));
                return this;
            }

            public Builder advertiserNameId(int i) {
                this.i = i;
                return this;
            }

            public FacebookViewBinder build() {
                return new FacebookViewBinder(this);
            }

            public final Builder callToActionId(int i) {
                this.f34496d = i;
                return this;
            }

            public final Builder extras(Map<String, Integer> map) {
                this.f = new HashMap(map);
                return this;
            }

            public Builder mediaViewId(int i) {
                this.g = i;
                return this;
            }

            public Builder sponsoredNameId(int i) {
                this.j = i;
                return this;
            }

            public final Builder textId(int i) {
                this.f34495c = i;
                return this;
            }

            public final Builder titleId(int i) {
                this.f34494b = i;
                return this;
            }
        }

        private FacebookViewBinder(Builder builder) {
            this.f34489a = builder.f34493a;
            this.f34490b = builder.f34494b;
            this.f34491c = builder.f34495c;
            this.f34492d = builder.f34496d;
            this.e = builder.e;
            this.f = builder.f;
            this.g = builder.g;
            this.h = builder.h;
            this.i = builder.i;
            this.j = builder.j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookAdRenderer$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        View f34497a;

        /* renamed from: b  reason: collision with root package name */
        TextView f34498b;

        /* renamed from: c  reason: collision with root package name */
        TextView f34499c;

        /* renamed from: d  reason: collision with root package name */
        TextView f34500d;
        RelativeLayout e;
        MediaView f;
        MediaView g;
        TextView h;
        TextView i;

        a() {
        }

        public final RelativeLayout getAdChoicesContainer() {
            return this.e;
        }

        public final MediaView getAdIconView() {
            return this.g;
        }

        public final TextView getAdvertiserNameView() {
            return this.h;
        }

        public final TextView getCallToActionView() {
            return this.f34500d;
        }

        public final View getMainView() {
            return this.f34497a;
        }

        public final MediaView getMediaView() {
            return this.f;
        }

        public final TextView getSponsoredLabelView() {
            return this.i;
        }

        public final TextView getTextView() {
            return this.f34499c;
        }

        public final TextView getTitleView() {
            return this.f34498b;
        }
    }

    public FacebookAdRenderer(FacebookViewBinder facebookViewBinder, AdSettings adSettings) {
        this.f34488c = facebookViewBinder;
        this.f34486a = new WeakHashMap<>();
        this.f34487b = adSettings;
    }

    public FacebookAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this(new FacebookViewBinder.Builder(viewBinder.f34654a).titleId(viewBinder.f34655b).textId(viewBinder.f34656c).callToActionId(viewBinder.f34657d).mediaViewId(viewBinder.e).adIconViewId(viewBinder.f).adChoicesRelativeLayoutId(2131361970).extras(viewBinder.i).build(), adSettings);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context.getApplicationContext()).inflate(this.f34488c.f34489a, viewGroup, false);
        View findViewById = inflate.findViewById(this.f34488c.h);
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
        mediaView.setId(this.f34488c.h);
        viewGroup2.addView(mediaView, indexOfChild + 1, layoutParams2);
        viewGroup2.removeView(findViewById);
        View findViewById2 = inflate.findViewById(this.f34488c.g);
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
        mediaView2.setId(this.f34488c.g);
        viewGroup3.addView(mediaView2, indexOfChild2 + 1, layoutParams4);
        viewGroup3.removeView(viewGroup3);
        return inflate;
    }

    public void renderAdView(View view, FacebookNative.a aVar) {
        a aVar2 = this.f34486a.get(view);
        a aVar3 = aVar2;
        if (aVar2 == null) {
            FacebookViewBinder facebookViewBinder = this.f34488c;
            if (view == null || facebookViewBinder == null) {
                aVar3 = new a();
            } else {
                aVar3 = new a();
                aVar3.f34497a = view;
                aVar3.f34498b = (TextView) view.findViewById(facebookViewBinder.f34490b);
                aVar3.f34499c = (TextView) view.findViewById(facebookViewBinder.f34491c);
                aVar3.f34500d = (TextView) view.findViewById(facebookViewBinder.f34492d);
                aVar3.e = (RelativeLayout) view.findViewById(facebookViewBinder.e);
                aVar3.f = (MediaView) view.findViewById(facebookViewBinder.g);
                aVar3.g = (MediaView) view.findViewById(facebookViewBinder.h);
                aVar3.h = (TextView) view.findViewById(facebookViewBinder.i);
                aVar3.i = (TextView) view.findViewById(facebookViewBinder.j);
            }
            this.f34486a.put(view, aVar3);
        }
        NativeRendererHelper.addTextView(aVar3.getTitleView(), aVar.getTitle());
        NativeRendererHelper.addTextView(aVar3.getTextView(), aVar.getText());
        NativeRendererHelper.addTextView(aVar3.getCallToActionView(), aVar.getCallToAction());
        NativeRendererHelper.addTextView(aVar3.getAdvertiserNameView(), aVar.getAdvertiserName());
        NativeRendererHelper.addTextView(aVar3.getSponsoredLabelView(), aVar.getSponsoredName());
        RelativeLayout adChoicesContainer = aVar3.getAdChoicesContainer();
        View callToActionView = CallAppRemoteConfigManager.get().c("facebookCTAOnlyClick") ? aVar3.getCallToActionView() : aVar3.getMainView();
        MediaView mediaView = aVar3.getMediaView();
        MediaView adIconView = aVar3.getAdIconView();
        FacebookNative.a(callToActionView, aVar.f34504a, mediaView, adIconView);
        if (!(mediaView == null && adIconView == null)) {
            aVar.f34505b = new ArrayList();
            if (mediaView != null) {
                aVar.f34505b.add(mediaView);
            }
            if (adIconView != null) {
                aVar.f34505b.add(adIconView);
            }
        }
        boolean z = true;
        if (adChoicesContainer != null) {
            adChoicesContainer.removeAllViews();
            NativeAdLayout nativeAdLayout = null;
            if (aVar3.f34497a instanceof NativeAdLayout) {
                nativeAdLayout = (NativeAdLayout) aVar3.f34497a;
            }
            AdOptionsView adOptionsView = new AdOptionsView(adChoicesContainer.getContext().getApplicationContext(), aVar.f34504a, nativeAdLayout);
            ViewGroup.LayoutParams layoutParams = adChoicesContainer.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams).addRule(21);
            }
            adOptionsView.setSingleIcon(true);
            adChoicesContainer.addView(adOptionsView);
        }
        NativeRendererHelper.updateExtras(aVar3.getMainView(), this.f34488c.f, aVar.getExtras());
        Boolean bool = (Boolean) aVar.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        aVar.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f34487b;
        if (bool == null) {
            z = false;
        }
        CallAppMoPubStaticNativeAdRenderer.a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof FacebookNative.a;
    }
}
