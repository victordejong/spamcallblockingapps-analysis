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

    /* renamed from: a  reason: collision with root package name */
    private final AdSettings f34478a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewBinder f34479b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakHashMap<View, a> f34480c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private CriteoNativeAd f34481d;
    private RendererHelper e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CriteoAdRenderer$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f34482a;

        /* renamed from: b  reason: collision with root package name */
        TextView f34483b;

        /* renamed from: c  reason: collision with root package name */
        TextView f34484c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f34485d;
        ImageView e;

        private a() {
        }

        static a a(View view, ViewBinder viewBinder) {
            a aVar = new a();
            if (view == null || viewBinder == null) {
                return aVar;
            }
            try {
                aVar.f34482a = (TextView) view.findViewById(viewBinder.f34655b);
                aVar.f34483b = (TextView) view.findViewById(viewBinder.f34656c);
                aVar.f34484c = (TextView) view.findViewById(viewBinder.f34657d);
                aVar.f34485d = (ImageView) view.findViewById(viewBinder.e);
                aVar.e = (ImageView) view.findViewById(viewBinder.f);
                return aVar;
            } catch (Exception e) {
                return new a();
            }
        }
    }

    public CriteoAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this.f34479b = viewBinder;
        this.f34478a = adSettings;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f34481d.createNativeRenderedView(context, viewGroup);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public View createNativeView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f34479b.f34654a, viewGroup, false);
    }

    public void renderAdView(View view, CriteoBidder.CriteoStaticNativeAd criteoStaticNativeAd) {
        a aVar = this.f34480c.get(view);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a(view, this.f34479b);
            this.f34480c.put(view, aVar2);
        }
        CriteoNativeAd criteoNativeAd = criteoStaticNativeAd.getCriteoNativeAd();
        NativeRendererHelper.addTextView(aVar2.f34482a, criteoNativeAd.getTitle());
        NativeRendererHelper.addTextView(aVar2.f34483b, criteoNativeAd.getDescription());
        NativeRendererHelper.addTextView(aVar2.f34484c, criteoNativeAd.getCallToAction());
        View findViewById = view.findViewById(this.f34479b.f);
        boolean z = false;
        if (findViewById != null) {
            CriteoMediaView criteoMediaView = new CriteoMediaView(view.getContext());
            criteoMediaView.setId(this.f34479b.f);
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
            this.e.setMediaInView(criteoNativeAd.getAdvertiserLogoMedia(), criteoMediaView);
        }
        View findViewById2 = view.findViewById(this.f34479b.e);
        if (findViewById2 != null) {
            CriteoMediaView criteoMediaView2 = new CriteoMediaView(view.getContext());
            criteoMediaView2.setId(this.f34479b.e);
            ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(layoutParams3.width, layoutParams3.height);
            ViewGroup viewGroup2 = (ViewGroup) findViewById2.getParent();
            viewGroup2.addView(criteoMediaView2, viewGroup2.indexOfChild(viewGroup2) + 1, layoutParams4);
            viewGroup2.removeView(viewGroup2);
            this.e.setMediaInView(criteoNativeAd.getProductMedia(), criteoMediaView2);
        }
        NativeRendererHelper.updateExtras(view, this.f34479b.i, criteoStaticNativeAd.getExtras());
        Boolean bool = (Boolean) criteoStaticNativeAd.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        criteoStaticNativeAd.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f34478a;
        if (bool != null) {
            z = true;
        }
        CallAppMoPubStaticNativeAdRenderer.a(view, adSettings, z);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
        this.e = rendererHelper;
    }

    public void setCriteoNativeAd(CriteoNativeAd criteoNativeAd) {
        this.f34481d = criteoNativeAd;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof CriteoBidder.CriteoStaticNativeAd;
    }
}
