package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.adapter.MediaView;
import com.bytedance.sdk.openadsdk.adapter.MediationAdapterUtil;
import com.callapp.contacts.util.ads.AdSettings;
import com.mopub.common.Preconditions;
import com.mopub.nativeads.PangleAdNative;
import com.mopub.nativeads.PangleAdViewBinder;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdRenderer.class */
public class PangleAdRenderer implements MoPubAdRenderer<PangleAdNative.PangleNativeAd> {

    /* renamed from: a */
    private final AdSettings f60085a;

    /* renamed from: b */
    private final PangleAdViewBinder f60086b;

    /* renamed from: c */
    private final WeakHashMap<View, PangleAdNativeViewHolder> f60087c;

    public PangleAdRenderer(PangleAdViewBinder pangleAdViewBinder, AdSettings adSettings) {
        this.f60086b = pangleAdViewBinder;
        this.f60087c = new WeakHashMap<>();
        this.f60085a = adSettings;
    }

    public PangleAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this(new PangleAdViewBinder.Builder(viewBinder.f60117a).titleId(viewBinder.f60118b).decriptionTextId(viewBinder.f60119c).callToActionId(viewBinder.f60120d).iconImageId(viewBinder.f60122f).logoViewId(viewBinder.f60123g).mediaViewIdId(viewBinder.f60121e).addExtras(viewBinder.f60125i).build(), adSettings);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.f60086b.mLayoutId, viewGroup, false);
        View findViewById = inflate.findViewById(this.f60086b.mMediaViewId);
        if (findViewById == null) {
            return inflate;
        }
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            layoutParams2.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        MediaView mediaView = new MediaView(context.getApplicationContext());
        ViewGroup viewGroup2 = (ViewGroup) findViewById.getParent();
        int indexOfChild = viewGroup2.indexOfChild(viewGroup2);
        mediaView.setId(this.f60086b.mMediaViewId);
        viewGroup2.addView(mediaView, indexOfChild + 1, layoutParams2);
        viewGroup2.removeView(viewGroup2);
        return inflate;
    }

    public void renderAdView(View view, final PangleAdNative.PangleNativeAd pangleNativeAd) {
        PangleAdNativeViewHolder pangleAdNativeViewHolder = this.f60087c.get(view);
        PangleAdNativeViewHolder pangleAdNativeViewHolder2 = pangleAdNativeViewHolder;
        if (pangleAdNativeViewHolder == null) {
            pangleAdNativeViewHolder2 = PangleAdNativeViewHolder.m6147a(view, this.f60086b);
            this.f60087c.put(view, pangleAdNativeViewHolder2);
        }
        if (pangleNativeAd != null && view != null) {
            if (!TextUtils.isEmpty(pangleNativeAd.getTitle()) && pangleAdNativeViewHolder2.mTitleView != null) {
                pangleAdNativeViewHolder2.mTitleView.setText(pangleNativeAd.getTitle());
            }
            if (!TextUtils.isEmpty(pangleNativeAd.getAdvertiserName()) && pangleAdNativeViewHolder2.mAdvertiserNameView != null) {
                pangleAdNativeViewHolder2.mAdvertiserNameView.setText(pangleNativeAd.getAdvertiserName());
            }
            if (!TextUtils.isEmpty(pangleNativeAd.getDescriptionText()) && pangleAdNativeViewHolder2.mDescription != null) {
                pangleAdNativeViewHolder2.mDescription.setText(pangleNativeAd.getDescriptionText());
            }
            if (!TextUtils.isEmpty(pangleNativeAd.getCallToAction()) && pangleAdNativeViewHolder2.mCallToActionView != null) {
                pangleAdNativeViewHolder2.mCallToActionView.setText(pangleNativeAd.getCallToAction());
            }
            if (pangleNativeAd.getIcon() != null && !TextUtils.isEmpty(pangleNativeAd.getIcon().getImageUrl()) && pangleAdNativeViewHolder2.mIcon != null) {
                NativeImageHelper.loadImageView(pangleNativeAd.getIcon().getImageUrl(), pangleAdNativeViewHolder2.mIcon);
            }
            if (pangleNativeAd.getAdLogo() != null && pangleAdNativeViewHolder2.mLogoView != null) {
                pangleAdNativeViewHolder2.mLogoView.setImageBitmap(pangleNativeAd.getAdLogo());
                pangleAdNativeViewHolder2.mLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.nativeads.PangleAdRenderer.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        pangleNativeAd.showPrivacyActivity();
                    }
                });
            }
            MediationAdapterUtil.addNativeFeedMainView(view.getContext(), pangleNativeAd.getImageMode(), pangleAdNativeViewHolder2.mMediaView, pangleNativeAd.getAdView(), pangleNativeAd.getImageList());
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            ArrayList arrayList2 = new ArrayList();
            if (pangleAdNativeViewHolder2.mCallToActionView != null) {
                arrayList2.add(pangleAdNativeViewHolder2.mCallToActionView);
            }
            pangleNativeAd.registerViewForInteraction((ViewGroup) view, arrayList, arrayList2, new TTNativeAd.AdInteractionListener() { // from class: com.mopub.nativeads.PangleAdRenderer.2
                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdClicked(View view2, TTNativeAd tTNativeAd) {
                    pangleNativeAd.onAdClicked(view2, tTNativeAd);
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdCreativeClick(View view2, TTNativeAd tTNativeAd) {
                    pangleNativeAd.onAdCreativeClick(view2, tTNativeAd);
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdShow(TTNativeAd tTNativeAd) {
                    pangleNativeAd.onAdShow(tTNativeAd);
                }
            });
        }
        Boolean bool = (Boolean) pangleNativeAd.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        pangleNativeAd.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        CallAppMoPubStaticNativeAdRenderer.m6234a(view, this.f60085a, bool != null);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof PangleAdNative.PangleNativeAd;
    }
}
