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

    /* renamed from: a */
    private AdSettings f59814a;

    /* renamed from: b */
    private WeakHashMap<View, C16909a> f59815b = new WeakHashMap<>();

    /* renamed from: c */
    private ViewBinder f59816c;

    /* renamed from: com.mopub.nativeads.BidMachineNativeRenderer$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BidMachineNativeRenderer$a.class */
    public static final class C16909a {

        /* renamed from: a */
        NativeAdContentLayout f59817a;

        /* renamed from: b */
        Set<View> f59818b;

        private C16909a() {
        }

        /* renamed from: a */
        static C16909a m6238a(View view, ViewBinder viewBinder) {
            C16909a c16909a = new C16909a();
            try {
                NativeAdContentLayout nativeAdContentLayout = (NativeAdContentLayout) view;
                nativeAdContentLayout.setTitleView(view.findViewById(viewBinder.f60118b));
                nativeAdContentLayout.setCallToActionView(view.findViewById(viewBinder.f60120d));
                nativeAdContentLayout.setIconView(view.findViewById(viewBinder.f60122f));
                nativeAdContentLayout.setDescriptionView(view.findViewById(viewBinder.f60119c));
                nativeAdContentLayout.setProviderView(view.findViewById(viewBinder.f60123g));
                View findViewById = view.findViewById(viewBinder.f60121e);
                if (findViewById != null) {
                    NativeMediaView nativeMediaView = new NativeMediaView(view.getContext());
                    nativeMediaView.setId(viewBinder.f60121e);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    viewGroup.addView(nativeMediaView, viewGroup.indexOfChild(viewGroup) + 1, layoutParams2);
                    viewGroup.removeView(viewGroup);
                    nativeAdContentLayout.setMediaView(nativeMediaView);
                }
                c16909a.f59817a = nativeAdContentLayout;
                c16909a.f59818b = m6237a(view, Collections.singleton(100));
                return c16909a;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Error during filling ViewHolder ", e);
                return new C16909a();
            }
        }

        /* renamed from: a */
        private static Set<View> m6237a(View view, Set<Integer> set) {
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
        this.f59816c = viewBinder;
        this.f59814a = adSettings;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        NativeAdContentLayout nativeAdContentLayout = new NativeAdContentLayout(context);
        View inflate = LayoutInflater.from(context).inflate(this.f59816c.f60117a, viewGroup, false);
        inflate.setId(100);
        nativeAdContentLayout.addView(inflate, -2, -2);
        return nativeAdContentLayout;
    }

    public void renderAdView(View view, BidMachineNativeAd bidMachineNativeAd) {
        C16909a c16909a = this.f59815b.get(view);
        C16909a c16909a2 = c16909a;
        if (c16909a == null) {
            c16909a2 = C16909a.m6238a(view, this.f59816c);
            this.f59815b.put(view, c16909a2);
        }
        boolean z = false;
        if (c16909a2.f59817a == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, "Error during registering native ad: NativeAdContentLayout don't found on layout");
        } else {
            c16909a2.f59817a.bind(bidMachineNativeAd.f59807a);
            c16909a2.f59817a.registerViewForInteraction(bidMachineNativeAd.f59807a, c16909a2.f59818b);
        }
        Boolean bool = (Boolean) bidMachineNativeAd.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        bidMachineNativeAd.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f59814a;
        if (bool != null) {
            z = true;
        }
        CallAppMoPubStaticNativeAdRenderer.m6234a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof BidMachineNativeAd;
    }
}
