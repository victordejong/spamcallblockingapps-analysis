package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.bidder.CriteoBidder;
import com.criteo.publisher.advancednative.CriteoMediaView;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeRenderer;
import com.criteo.publisher.advancednative.RendererHelper;
import com.mopub.common.Preconditions;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CriteoAdRenderer.class */
public class CriteoAdRenderer implements CriteoNativeRenderer, MoPubAdRenderer<CriteoBidder.CriteoStaticNativeAd> {

    /* renamed from: a */
    private final AdSettings f59827a;

    /* renamed from: b */
    private final ViewBinder f59828b;

    /* renamed from: c */
    private final WeakHashMap<View, C16914a> f59829c = new WeakHashMap<>();

    /* renamed from: d */
    private CriteoNativeAd f59830d;

    /* renamed from: e */
    private RendererHelper f59831e;

    /* renamed from: com.mopub.nativeads.CriteoAdRenderer$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CriteoAdRenderer$a.class */
    public static final class C16914a {

        /* renamed from: a */
        TextView f59832a;

        /* renamed from: b */
        TextView f59833b;

        /* renamed from: c */
        TextView f59834c;

        /* renamed from: d */
        ImageView f59835d;

        /* renamed from: e */
        ImageView f59836e;

        private C16914a() {
        }

        /* renamed from: a */
        static C16914a m6231a(View view, ViewBinder viewBinder) {
            C16914a c16914a = new C16914a();
            if (view == null || viewBinder == null) {
                return c16914a;
            }
            try {
                c16914a.f59832a = (TextView) view.findViewById(viewBinder.f60118b);
                c16914a.f59833b = (TextView) view.findViewById(viewBinder.f60119c);
                c16914a.f59834c = (TextView) view.findViewById(viewBinder.f60120d);
                c16914a.f59835d = (ImageView) view.findViewById(viewBinder.f60121e);
                c16914a.f59836e = (ImageView) view.findViewById(viewBinder.f60122f);
                return c16914a;
            } catch (Exception e) {
                return new C16914a();
            }
        }
    }

    public CriteoAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this.f59828b = viewBinder;
        this.f59827a = adSettings;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f59830d.createNativeRenderedView(context, viewGroup);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public View createNativeView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f59828b.f60117a, viewGroup, false);
    }

    public void renderAdView(View view, CriteoBidder.CriteoStaticNativeAd criteoStaticNativeAd) {
        C16914a c16914a = this.f59829c.get(view);
        C16914a c16914a2 = c16914a;
        if (c16914a == null) {
            c16914a2 = C16914a.m6231a(view, this.f59828b);
            this.f59829c.put(view, c16914a2);
        }
        CriteoNativeAd criteoNativeAd = criteoStaticNativeAd.getCriteoNativeAd();
        NativeRendererHelper.addTextView(c16914a2.f59832a, criteoNativeAd.getTitle());
        NativeRendererHelper.addTextView(c16914a2.f59833b, criteoNativeAd.getDescription());
        NativeRendererHelper.addTextView(c16914a2.f59834c, criteoNativeAd.getCallToAction());
        View findViewById = view.findViewById(this.f59828b.f60122f);
        boolean z = false;
        if (findViewById != null) {
            CriteoMediaView criteoMediaView = new CriteoMediaView(view.getContext());
            criteoMediaView.setId(this.f59828b.f60122f);
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            viewGroup.addView(criteoMediaView, viewGroup.indexOfChild(findViewById) + 1, layoutParams2);
            viewGroup.removeView(viewGroup);
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
                for (int i = 0; i < rules.length; i++) {
                    layoutParams2.addRule(i, rules[i]);
                }
            }
            this.f59831e.setMediaInView(criteoNativeAd.getAdvertiserLogoMedia(), criteoMediaView);
        }
        View findViewById2 = view.findViewById(this.f59828b.f60121e);
        if (findViewById2 != null) {
            CriteoMediaView criteoMediaView2 = new CriteoMediaView(view.getContext());
            criteoMediaView2.setId(this.f59828b.f60121e);
            ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(layoutParams3.width, layoutParams3.height);
            ViewGroup viewGroup2 = (ViewGroup) findViewById2.getParent();
            viewGroup2.addView(criteoMediaView2, viewGroup2.indexOfChild(viewGroup2) + 1, layoutParams4);
            viewGroup2.removeView(viewGroup2);
            this.f59831e.setMediaInView(criteoNativeAd.getProductMedia(), criteoMediaView2);
        }
        NativeRendererHelper.updateExtras(view, this.f59828b.f60125i, criteoStaticNativeAd.getExtras());
        Boolean bool = (Boolean) criteoStaticNativeAd.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        criteoStaticNativeAd.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f59827a;
        if (bool != null) {
            z = true;
        }
        CallAppMoPubStaticNativeAdRenderer.m6234a(view, adSettings, z);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
        this.f59831e = rendererHelper;
    }

    public void setCriteoNativeAd(CriteoNativeAd criteoNativeAd) {
        this.f59830d = criteoNativeAd;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof CriteoBidder.CriteoStaticNativeAd;
    }
}
