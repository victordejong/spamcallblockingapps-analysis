package com.appnext.suggestedappswider.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.appnext.base.C0472a;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderViewCallbacks;
import com.appnext.suggestedappswider.C0671R;
import com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdView;
import com.appnext.suggestedappswider.views.C0692a;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018�� #2\u00020\u00012\u00020\u0002:\u0001#B%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\bH\u0002J\u0012\u0010\u0013\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u0011H\u0016J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010 \u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u001aR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;", "Landroid/widget/FrameLayout;", "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "anCollectionView", "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;", "mAppnextSuggestedAppsWiderDataContainer", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;", "mAppnextSuggestedAppsWiderViewCallbacks", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;", "addANSuggestedAppsWiderAdView", "", "getTemplate", "initANSuggestedAppsWiderAdView", "load", "appnextSuggestedAppsWiderDataContainer", "appnextSuggestedAppsWiderViewCallbacks", "loadAds", "onAdClicked", "packageName", "", "onAdGotImpression", "onAdsLoadedSuccessfully", "onError", "error", "Lcom/appnext/core/AppnextError;", "setParams", "setTitle", "title", "Companion", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy.class */
public class ANSuggestedAppsWiderAdViewProxy extends FrameLayout implements ANSuggestedAppsWiderAdView.ANCollectionAdViewCallbacks {
    public static final C0691a Companion = new C0691a(null);
    private static final int DEFAULT_TEMPLATE_TYPE = 1;
    private static final String TEMPLATE = "template";
    private static final String TEMPLATE_WEIGHT = "weight";
    private ANSuggestedAppsWiderAdView anCollectionView;
    private AppnextSuggestedAppsWiderDataContainer mAppnextSuggestedAppsWiderDataContainer;
    private AppnextSuggestedAppsWiderViewCallbacks mAppnextSuggestedAppsWiderViewCallbacks;

    @Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$Companion;", "", "()V", "DEFAULT_TEMPLATE_TYPE", "", "TEMPLATE", "", "TEMPLATE_WEIGHT", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdViewProxy$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a.class */
    public static final class C0691a {
        private C0691a() {
        }

        public /* synthetic */ C0691a(f fVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ANSuggestedAppsWiderAdViewProxy(Context context) {
        this(context, null, 0, 6, null);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ANSuggestedAppsWiderAdViewProxy(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ANSuggestedAppsWiderAdViewProxy(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setVisibility(8);
        initANSuggestedAppsWiderAdView(attributeSet);
    }

    public /* synthetic */ ANSuggestedAppsWiderAdViewProxy(Context context, AttributeSet attributeSet, int i, int i2, f fVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final void addANSuggestedAppsWiderAdView() {
        ANSuggestedAppsWiderAdView aNSuggestedAppsWiderAdView = this.anCollectionView;
        l.c(aNSuggestedAppsWiderAdView);
        int viewWidthPixel = aNSuggestedAppsWiderAdView.getViewWidthPixel();
        ANSuggestedAppsWiderAdView aNSuggestedAppsWiderAdView2 = this.anCollectionView;
        l.c(aNSuggestedAppsWiderAdView2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(viewWidthPixel, aNSuggestedAppsWiderAdView2.getViewHeightPixel());
        layoutParams.gravity = 1;
        addView(this.anCollectionView, layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008a, code lost:
        r9 = r0.getJSONObject(r0).getInt(com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdViewProxy.TEMPLATE);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int getTemplate() {
        /*
            r4 = this;
            com.appnext.suggestedappswider.b.d r0 = com.appnext.suggestedappswider.p023b.C0688d.m42108bs()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r1 = "templates"
            java.lang.String r0 = r0.m42476y(r1)     // Catch: java.lang.Throwable -> Laa
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lb1
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Laa
            r6 = r0
            r0 = r6
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Laa
            r0 = r6
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Laa
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L4f
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
        L29:
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r10
            r1 = r6
            r2 = r9
            org.json.JSONObject r1 = r1.getJSONObject(r2)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "weight"
            int r1 = r1.getInt(r2)     // Catch: java.lang.Throwable -> Laa
            int r0 = r0 + r1
            r10 = r0
            r0 = r11
            r1 = r7
            if (r0 < r1) goto L48
            goto L52
        L48:
            r0 = r11
            r9 = r0
            goto L29
        L4f:
            r0 = 0
            r10 = r0
        L52:
            java.util.Random r0 = new java.util.Random     // Catch: java.lang.Throwable -> Laa
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: java.lang.Throwable -> Laa
            r0 = r5
            r1 = r10
            int r0 = r0.nextInt(r1)     // Catch: java.lang.Throwable -> Laa
            r11 = r0
            r0 = r7
            if (r0 <= 0) goto Lb1
            r0 = 0
            r9 = r0
            r0 = r8
            r10 = r0
        L6d:
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r9
            r1 = r6
            r2 = r10
            org.json.JSONObject r1 = r1.getJSONObject(r2)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "weight"
            int r1 = r1.getInt(r2)     // Catch: java.lang.Throwable -> Laa
            int r0 = r0 + r1
            r9 = r0
            r0 = r9
            r1 = r11
            if (r0 <= r1) goto L9a
            r0 = r6
            r1 = r10
            org.json.JSONObject r0 = r0.getJSONObject(r1)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r1 = "template"
            int r0 = r0.getInt(r1)     // Catch: java.lang.Throwable -> Laa
            r9 = r0
            goto Lb4
        L9a:
            r0 = r8
            r1 = r7
            if (r0 < r1) goto La3
            goto Lb1
        La3:
            r0 = r8
            r10 = r0
            goto L6d
        Laa:
            r6 = move-exception
            java.lang.String r0 = "ANCollectionAdViewProxy$getTemplate"
            r1 = r6
            com.appnext.base.C0472a.m42577a(r0, r1)
        Lb1:
            r0 = 1
            r9 = r0
        Lb4:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdViewProxy.getTemplate():int");
    }

    private final void initANSuggestedAppsWiderAdView(AttributeSet attributeSet) {
        try {
            C0692a.C0693a c0693a = C0692a.f2139hx;
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            ANSuggestedAppsWiderAdView m42099a = C0692a.C0693a.m42099a(context, getTemplate());
            this.anCollectionView = m42099a;
            if (m42099a != null) {
                addANSuggestedAppsWiderAdView();
                setParams(attributeSet);
                return;
            }
            AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
            if (appnextSuggestedAppsWiderViewCallbacks == null) {
                return;
            }
            appnextSuggestedAppsWiderViewCallbacks.onViewError(new AppnextError(AppnextError.INTERNAL_ERROR));
        } catch (Throwable th) {
            C0472a.m42577a("ANCollectionAdViewProxy$initANSuggestedAppsWiderAdView", th);
            AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks2 = this.mAppnextSuggestedAppsWiderViewCallbacks;
            if (appnextSuggestedAppsWiderViewCallbacks2 == null) {
                return;
            }
            appnextSuggestedAppsWiderViewCallbacks2.onViewError(new AppnextError(AppnextError.INTERNAL_ERROR));
        }
    }

    private final void loadAds() {
        try {
            ANSuggestedAppsWiderAdView aNSuggestedAppsWiderAdView = this.anCollectionView;
            l.c(aNSuggestedAppsWiderAdView);
            aNSuggestedAppsWiderAdView.m42101a(this.mAppnextSuggestedAppsWiderDataContainer, this);
        } catch (Throwable th) {
            AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
            if (appnextSuggestedAppsWiderViewCallbacks != null) {
                appnextSuggestedAppsWiderViewCallbacks.onViewError(new AppnextError(AppnextError.INTERNAL_ERROR));
            }
            C0472a.m42577a("ANCollectionAdViewProxy$loadAds", th);
        }
    }

    private final void setParams(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0671R.styleable.AppnextSuggestedAppsWiderView);
            l.d(obtainStyledAttributes, "context.obtainStyledAttributes(it, R.styleable.AppnextSuggestedAppsWiderView)");
            int i = C0671R.styleable.AppnextSuggestedAppsWiderView_title;
            if (obtainStyledAttributes.hasValue(i)) {
                ANSuggestedAppsWiderAdView aNSuggestedAppsWiderAdView = this.anCollectionView;
                l.c(aNSuggestedAppsWiderAdView);
                String string = obtainStyledAttributes.getString(i);
                l.c(string);
                aNSuggestedAppsWiderAdView.setTitle(string);
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void load(AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer, AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks) {
        l.e(appnextSuggestedAppsWiderDataContainer, "appnextSuggestedAppsWiderDataContainer");
        try {
            if (!C0551g.m42368k(getContext())) {
                if (appnextSuggestedAppsWiderViewCallbacks == null) {
                    return;
                }
                appnextSuggestedAppsWiderViewCallbacks.onViewError(new AppnextError(AppnextError.CONNECTION_ERROR));
                return;
            }
            this.mAppnextSuggestedAppsWiderDataContainer = appnextSuggestedAppsWiderDataContainer;
            this.mAppnextSuggestedAppsWiderViewCallbacks = appnextSuggestedAppsWiderViewCallbacks;
            loadAds();
        } catch (Throwable th) {
            if (appnextSuggestedAppsWiderViewCallbacks == null) {
                return;
            }
            appnextSuggestedAppsWiderViewCallbacks.onViewError(new AppnextError(AppnextError.INTERNAL_ERROR));
        }
    }

    @Override // com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdView.ANCollectionAdViewCallbacks
    public void onAdClicked(String str) {
        l.e(str, "packageName");
        AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
        if (appnextSuggestedAppsWiderViewCallbacks != null) {
            appnextSuggestedAppsWiderViewCallbacks.onAdClicked(str);
        }
    }

    @Override // com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdView.ANCollectionAdViewCallbacks
    public void onAdGotImpression(String str) {
        l.e(str, "packageName");
        AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
        if (appnextSuggestedAppsWiderViewCallbacks != null) {
            appnextSuggestedAppsWiderViewCallbacks.onAdImpressionReceived(str);
        }
    }

    @Override // com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdView.ANCollectionAdViewCallbacks
    public void onAdsLoadedSuccessfully() {
        setVisibility(0);
        AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
        if (appnextSuggestedAppsWiderViewCallbacks != null) {
            appnextSuggestedAppsWiderViewCallbacks.onViewLoadedSuccessfully();
        }
    }

    @Override // com.appnext.suggestedappswider.views.ANSuggestedAppsWiderAdView.ANCollectionAdViewCallbacks
    public void onError(AppnextError appnextError) {
        l.e(appnextError, "error");
        AppnextSuggestedAppsWiderViewCallbacks appnextSuggestedAppsWiderViewCallbacks = this.mAppnextSuggestedAppsWiderViewCallbacks;
        if (appnextSuggestedAppsWiderViewCallbacks != null) {
            appnextSuggestedAppsWiderViewCallbacks.onViewError(appnextError);
        }
    }

    public final void setTitle(String str) {
        l.e(str, "title");
        ANSuggestedAppsWiderAdView aNSuggestedAppsWiderAdView = this.anCollectionView;
        l.c(aNSuggestedAppsWiderAdView);
        aNSuggestedAppsWiderAdView.setTitle(str);
    }
}
