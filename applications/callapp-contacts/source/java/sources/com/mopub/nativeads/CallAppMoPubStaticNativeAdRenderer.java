package com.mopub.nativeads;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.load.AbstractC3826l;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.CircleBackgroundCrop;
import com.callapp.contacts.util.glide.GlideUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer.class */
public class CallAppMoPubStaticNativeAdRenderer extends MoPubStaticNativeAdRenderer {
    public static final String EXTRA_WAS_ANIMATED = "was_animated";

    /* renamed from: b */
    private final AdSettings f59819b;

    /* renamed from: com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer$3 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3.class */
    public static final class RunnableC169123 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f59824a;

        RunnableC169123(View view) {
            this.f59824a = view;
        }

        /* renamed from: a */
        public /* synthetic */ void m6232a(final View view) {
            CallappAnimationUtils.m27179a(view, view, CallappAnimationUtils.FlipDirection.LTR, 1000);
            view.postDelayed(new Runnable() { // from class: com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    View view2 = view;
                    CallappAnimationUtils.m27179a(view2, view2, CallappAnimationUtils.FlipDirection.LTR, 1000);
                }
            }, 2500L);
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = this.f59824a;
            CallappAnimationUtils.m27179a(view, view, CallappAnimationUtils.FlipDirection.LTR, 1000);
            final View view2 = this.f59824a;
            view2.postDelayed(new Runnable() { // from class: com.mopub.nativeads._$$Lambda$CallAppMoPubStaticNativeAdRenderer$3$5sNGN_fm_Ktx1dv5VzBPRueJIZA
                @Override // java.lang.Runnable
                public final void run() {
                    CallAppMoPubStaticNativeAdRenderer.RunnableC169123.this.m6232a(view2);
                }
            }, 2500L);
        }
    }

    public CallAppMoPubStaticNativeAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        super(viewBinder);
        this.f59819b = adSettings;
    }

    /* renamed from: a */
    private static void m6236a(View view) {
        View findViewById = view.findViewById(2131363355);
        if (findViewById != null) {
            findViewById.postDelayed(new RunnableC169123(findViewById), 500L);
        }
    }

    /* renamed from: a */
    public static void m6234a(final View view, AdSettings adSettings, boolean z) {
        View findViewById;
        View findViewById2;
        ImageView imageView;
        if (view != null) {
            colorTextViews(view);
            if (adSettings.f27896a && (findViewById2 = view.findViewById(2131363355)) != null) {
                if (findViewById2 instanceof ImageView) {
                    imageView = (ImageView) findViewById2;
                } else {
                    imageView = null;
                    if (findViewById2 instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) findViewById2;
                        imageView = null;
                        if (viewGroup.getChildCount() > 0) {
                            View childAt = viewGroup.getChildAt(0);
                            imageView = null;
                            if (childAt instanceof ImageView) {
                                imageView = (ImageView) childAt;
                            }
                        }
                    }
                }
                if (imageView != null) {
                    GlideUtils.m27035b(CallAppApplication.get()).mo27055a(imageView.getDrawable()).m27079b((AbstractC3826l<Bitmap>) new CircleBackgroundCrop(null, null, 0, 0, BitmapDescriptorFactory.HUE_RED, true, false)).m37562a(imageView);
                }
            }
            if (z) {
                return;
            }
            int adAnimation = adSettings.getAdAnimation();
            if (adAnimation == 1) {
                CallappAnimationUtils.m27186a(view, Activities.getScreenWidth(1));
            } else if (adAnimation == 2) {
            } else {
                if (adAnimation == 4) {
                    view.post(new Runnable() { // from class: com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CallappAnimationUtils.m27190a(view);
                        }
                    });
                } else if (adAnimation == 5) {
                    m6236a(view);
                    View findViewById3 = view.findViewById(2131363353);
                    if (findViewById3 == null || (findViewById = view.findViewById(2131364187)) == null) {
                        return;
                    }
                    m6233b(findViewById3, findViewById, 10);
                    return;
                }
                m6236a(view);
            }
        }
    }

    /* renamed from: b */
    public static void m6233b(final View view, final View view2, final int i) {
        if (i > 0) {
            view.postDelayed(new Runnable() { // from class: com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer.2
                @Override // java.lang.Runnable
                public final void run() {
                    view.setBackgroundColor(ThemeUtils.getColor(i % 2 == 0 ? 2131100054 : 2131099784));
                    view2.setBackgroundColor(ThemeUtils.getColor(i % 2 == 0 ? 2131100051 : 2131099686));
                    CallAppMoPubStaticNativeAdRenderer.m6233b(view, view2, i - 1);
                }
            }, 500L);
            return;
        }
        view.setBackgroundColor(ThemeUtils.getColor(2131099784));
        view2.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }

    public static void colorTextViews(View view) {
        View findViewById = view.findViewById(2131363425);
        if (findViewById != null) {
            findViewById.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        }
        View findViewById2 = view.findViewById(2131363426);
        if (findViewById2 != null) {
            findViewById2.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        }
        TextView textView = (TextView) view.findViewById(2131363360);
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        TextView textView2 = (TextView) view.findViewById(2131363362);
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.getColor(2131099784));
        }
        View findViewById3 = view.findViewById(2131363353);
        if (findViewById3 != null) {
            findViewById3.setBackgroundColor(ThemeUtils.getColor(2131099784));
        }
        View findViewById4 = view.findViewById(2131363351);
        if (findViewById4 instanceof TextView) {
            TextView textView3 = (TextView) findViewById4;
            if (textView3.getCurrentTextColor() == CallAppApplication.get().getResources().getColor(2131099784)) {
                textView3.setTextColor(ThemeUtils.getColor(2131099784));
            }
        }
        View findViewById5 = view.findViewById(2131363354);
        if (findViewById5 != null) {
            findViewById5.setBackgroundColor(ThemeUtils.getColor(2131100057));
            View findViewById6 = findViewById5.findViewById(2131363351);
            if (findViewById6 instanceof TextView) {
                ((TextView) findViewById6).setTextColor(ThemeUtils.getColor(2131100228));
            }
            View findViewById7 = view.findViewById(2131364187);
            if (findViewById7 != null) {
                findViewById7.setBackgroundColor(ThemeUtils.getColor(2131100051));
            }
        } else {
            View findViewById8 = view.findViewById(2131364187);
            if (findViewById8 != null) {
                findViewById8.setBackgroundColor(ThemeUtils.getColor(2131099686));
            }
        }
        TextView textView4 = (TextView) view.findViewById(2131361973);
        if (textView4 != null) {
            textView4.setTextColor(ThemeUtils.getColor(2131100108));
        }
        TextView textView5 = (TextView) view.findViewById(2131363359);
        if (textView5 != null) {
            textView5.setTextColor(ThemeUtils.getColor(2131100108));
        }
        View findViewById9 = view.findViewById(2131362512);
        if (findViewById9 != null) {
            findViewById9.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        }
    }

    @Override // com.mopub.nativeads.MoPubStaticNativeAdRenderer
    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        staticNativeAd.addExtra(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING, String.valueOf(staticNativeAd.getStarRating()));
        super.renderAdView(view, staticNativeAd);
        Boolean bool = (Boolean) staticNativeAd.getExtra(EXTRA_WAS_ANIMATED);
        staticNativeAd.addExtra(EXTRA_WAS_ANIMATED, Boolean.TRUE);
        m6234a(view, this.f59819b, bool != null);
    }
}
