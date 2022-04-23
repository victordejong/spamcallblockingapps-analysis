package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.callapp.contacts.util.ads.AdSettings;
import com.mopub.common.logging.MoPubLog;
import io.bidmachine.nativead.view.NativeAdContentLayout;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeRenderer.class */
public class BidMachineNativeRenderer implements MoPubAdRenderer<BidMachineNativeAd> {

    /* renamed from: a  reason: collision with root package name */
    private AdSettings f34465a;

    /* renamed from: b  reason: collision with root package name */
    private WeakHashMap<View, a> f34466b = new WeakHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private ViewBinder f34467c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeRenderer$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        NativeAdContentLayout f34468a;

        /* renamed from: b  reason: collision with root package name */
        Set<View> f34469b;

        private a() {
        }

        static a a(View view, ViewBinder viewBinder) {
            a aVar = new a();
            try {
                NativeAdContentLayout nativeAdContentLayout = (NativeAdContentLayout) view;
                nativeAdContentLayout.setTitleView(view.findViewById(viewBinder.f34655b));
                nativeAdContentLayout.setCallToActionView(view.findViewById(viewBinder.f34657d));
                nativeAdContentLayout.setIconView(view.findViewById(viewBinder.f));
                nativeAdContentLayout.setDescriptionView(view.findViewById(viewBinder.f34656c));
                nativeAdContentLayout.setProviderView(view.findViewById(viewBinder.g));
                View findViewById = view.findViewById(viewBinder.e);
                if (findViewById != null) {
                    NativeMediaView nativeMediaView = new NativeMediaView(view.getContext());
                    nativeMediaView.setId(viewBinder.e);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    viewGroup.addView(nativeMediaView, viewGroup.indexOfChild(viewGroup) + 1, layoutParams2);
                    viewGroup.removeView(viewGroup);
                    nativeAdContentLayout.setMediaView(nativeMediaView);
                }
                aVar.f34468a = nativeAdContentLayout;
                aVar.f34469b = a(view, Collections.singleton(100));
                return aVar;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Error during filling ViewHolder ", e);
                return new a();
            }
        }

        private static Set<View> a(View view, Set<Integer> set) {
            if (set == null || set.isEmpty()) {
                return null;
            }
            HashSet hashSet = new HashSet();
            for (Integer num : set) {
                View findViewById = view.findViewById(num.intValue());
                if (findViewById != null) {
                    hashSet.add(findViewById);
                }
            }
            return hashSet;
        }
    }

    public BidMachineNativeRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this.f34467c = viewBinder;
        this.f34465a = adSettings;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        NativeAdContentLayout nativeAdContentLayout = new NativeAdContentLayout(context);
        View inflate = LayoutInflater.from(context).inflate(this.f34467c.f34654a, viewGroup, false);
        inflate.setId(100);
        nativeAdContentLayout.addView(inflate, -2, -2);
        return nativeAdContentLayout;
    }

    public void renderAdView(View view, BidMachineNativeAd bidMachineNativeAd) {
        a aVar = this.f34466b.get(view);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a(view, this.f34467c);
            this.f34466b.put(view, aVar2);
        }
        boolean z = false;
        if (aVar2.f34468a == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, "Error during registering native ad: NativeAdContentLayout don't found on layout");
        } else {
            aVar2.f34468a.bind(bidMachineNativeAd.f34459a);
            aVar2.f34468a.registerViewForInteraction(bidMachineNativeAd.f34459a, aVar2.f34469b);
        }
        Boolean bool = (Boolean) bidMachineNativeAd.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        bidMachineNativeAd.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f34465a;
        if (bool != null) {
            z = true;
        }
        CallAppMoPubStaticNativeAdRenderer.a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof BidMachineNativeAd;
    }
}
