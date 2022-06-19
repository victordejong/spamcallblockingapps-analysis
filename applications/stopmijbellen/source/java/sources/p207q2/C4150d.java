package p207q2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.AbstractC1609Ad;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: q2.d */
/* loaded from: classes-dex2jar.jar:q2/d.class */
public class C4150d extends UnifiedNativeAdMapper {

    /* renamed from: a */
    public MediationNativeAdConfiguration f13097a;

    /* renamed from: b */
    public MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> f13098b;

    /* renamed from: c */
    public NativeAdBase f13099c;

    /* renamed from: d */
    public MediationNativeAdCallback f13100d;

    /* renamed from: e */
    public MediaView f13101e;

    /* renamed from: q2.d$a */
    /* loaded from: classes-dex2jar.jar:q2/d$a.class */
    public class C4151a extends NativeAd.Image {

        /* renamed from: a */
        public Drawable f13102a;

        /* renamed from: b */
        public Uri f13103b;

        public C4151a() {
        }

        public C4151a(Drawable drawable) {
            this.f13102a = drawable;
        }

        public C4151a(Uri uri) {
            this.f13103b = uri;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return this.f13102a;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return this.f13103b;
        }
    }

    /* renamed from: q2.d$b */
    /* loaded from: classes-dex2jar.jar:q2/d$b.class */
    public class C4152b implements AdListener, NativeAdListener {

        /* renamed from: a */
        public WeakReference<Context> f13104a;

        /* renamed from: b */
        public NativeAdBase f13105b;

        public C4152b(Context context, NativeAdBase nativeAdBase) {
            C4150d.this = r6;
            this.f13105b = nativeAdBase;
            this.f13104a = new WeakReference<>(context);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
            C4150d.this.f13100d.onAdOpened();
            C4150d.this.f13100d.onAdLeftApplication();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
            if (abstractC1609Ad != this.f13105b) {
                AdError adError = new AdError(106, "Ad Loaded is not a Native Ad.", FacebookMediationAdapter.ERROR_DOMAIN);
                adError.getMessage();
                C4150d.this.f13098b.onFailure(adError);
                return;
            }
            Context context = this.f13104a.get();
            if (context == null) {
                AdError adError2 = new AdError(107, "Context is null.", FacebookMediationAdapter.ERROR_DOMAIN);
                adError2.getMessage();
                C4150d.this.f13098b.onFailure(adError2);
                return;
            }
            C4150d c4150d = C4150d.this;
            NativeAdBase nativeAdBase = c4150d.f13099c;
            boolean z = (nativeAdBase.getAdHeadline() == null || nativeAdBase.getAdBodyText() == null || nativeAdBase.getAdIcon() == null || nativeAdBase.getAdCallToAction() == null) ? false : true;
            if (!(nativeAdBase instanceof NativeBannerAd)) {
                boolean z2 = false;
                if (z) {
                    z2 = false;
                    if (nativeAdBase.getAdCoverImage() != null) {
                        z2 = false;
                        if (c4150d.f13101e != null) {
                            z2 = true;
                        }
                    }
                }
                z = z2;
            }
            if (!z) {
                AdError adError3 = new AdError(108, "Ad from Facebook doesn't have all required assets.", FacebookMediationAdapter.ERROR_DOMAIN);
                String str = FacebookMediationAdapter.TAG;
                Log.w(str, adError3.getMessage());
                Log.w(str, adError3.getMessage());
                C4150d.this.f13098b.onFailure(adError3);
                return;
            }
            c4150d.setHeadline(c4150d.f13099c.getAdHeadline());
            if (c4150d.f13099c.getAdCoverImage() != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new C4151a(Uri.parse(c4150d.f13099c.getAdCoverImage().getUrl())));
                c4150d.setImages(arrayList);
            }
            c4150d.setBody(c4150d.f13099c.getAdBodyText());
            if (c4150d.f13099c.getPreloadedIconViewDrawable() != null) {
                c4150d.setIcon(new C4151a(c4150d.f13099c.getPreloadedIconViewDrawable()));
            } else if (c4150d.f13099c.getAdIcon() == null) {
                c4150d.setIcon(new C4151a());
            } else {
                c4150d.setIcon(new C4151a(Uri.parse(c4150d.f13099c.getAdIcon().getUrl())));
            }
            c4150d.setCallToAction(c4150d.f13099c.getAdCallToAction());
            c4150d.setAdvertiser(c4150d.f13099c.getAdvertiserName());
            c4150d.f13101e.setListener(new C4149c(c4150d));
            c4150d.setHasVideoContent(true);
            c4150d.setMediaView(c4150d.f13101e);
            c4150d.setStarRating(null);
            Bundle bundle = new Bundle();
            bundle.putCharSequence(FacebookAdapter.KEY_ID, c4150d.f13099c.getId());
            bundle.putCharSequence(FacebookAdapter.KEY_SOCIAL_CONTEXT_ASSET, c4150d.f13099c.getAdSocialContext());
            c4150d.setExtras(bundle);
            c4150d.setAdChoicesContent(new AdOptionsView(context, c4150d.f13099c, null));
            C4150d c4150d2 = C4150d.this;
            c4150d2.f13100d = c4150d2.f13098b.onSuccess(c4150d2);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
            AdError adError2 = FacebookMediationAdapter.getAdError(adError);
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            C4150d.this.f13098b.onFailure(adError2);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC1609Ad abstractC1609Ad) {
            String str = FacebookMediationAdapter.TAG;
        }
    }

    public C4150d(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        this.f13098b = mediationAdLoadCallback;
        this.f13097a = mediationNativeAdConfiguration;
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
        setOverrideClickHandling(true);
        ArrayList arrayList = new ArrayList(map.values());
        View view2 = map.get("3003");
        NativeAdBase nativeAdBase = this.f13099c;
        if (nativeAdBase instanceof NativeBannerAd) {
            if (view2 == null) {
                Log.w(FacebookMediationAdapter.TAG, "Missing or invalid native ad icon asset. Facebook impression recording might be impacted for this ad.");
            } else if (!(view2 instanceof ImageView)) {
                Log.w(FacebookMediationAdapter.TAG, String.format("Native ad icon asset is rendered with an incompatible class type. Facebook impression recording might be impacted for this ad. Expected: ImageView, actual: %s.", view2.getClass()));
            } else {
                ((NativeBannerAd) nativeAdBase).registerViewForInteraction(view, (ImageView) view2, arrayList);
            }
        } else if (!(nativeAdBase instanceof com.facebook.ads.NativeAd)) {
            Log.w(FacebookMediationAdapter.TAG, "Native ad type is not of type NativeAd or NativeBannerAd. It is not currently supported by the Facebook Adapter. Facebook impression recording might be impacted for this ad.");
        } else {
            com.facebook.ads.NativeAd nativeAd = (com.facebook.ads.NativeAd) nativeAdBase;
            if (view2 instanceof ImageView) {
                nativeAd.registerViewForInteraction(view, this.f13101e, (ImageView) view2, arrayList);
                return;
            }
            Log.w(FacebookMediationAdapter.TAG, "Native icon asset is not of type ImageView. Calling registerViewForInteraction() without a reference to the icon view.");
            nativeAd.registerViewForInteraction(view, this.f13101e, arrayList);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        NativeAdBase nativeAdBase = this.f13099c;
        if (nativeAdBase != null) {
            nativeAdBase.unregisterView();
        }
        super.untrackView(view);
    }
}
