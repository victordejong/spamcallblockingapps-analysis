package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.base.C3878R;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView.class */
public class MoPubView extends FrameLayout {
    @Nullable

    /* renamed from: a */
    public AdViewController f8498a;

    /* renamed from: b */
    public Object f8499b;

    /* renamed from: c */
    public Context f8500c;

    /* renamed from: d */
    public int f8501d;

    /* renamed from: e */
    public BroadcastReceiver f8502e;

    /* renamed from: f */
    public MoPubAdSize f8503f;

    /* renamed from: g */
    public BannerAdListener f8504g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$BannerAdListener.class */
    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$MoPubAdSize.class */
    public enum MoPubAdSize implements AbstractC3840b {
        MATCH_VIEW(-1),
        HEIGHT_50(50),
        HEIGHT_90(90),
        HEIGHT_250(250),
        HEIGHT_280(AbstractC3840b.HEIGHT_280_INT);
        

        /* renamed from: a */
        public final int f8506a;

        MoPubAdSize(int i) {
            this.f8506a = i;
        }

        @NonNull
        public static MoPubAdSize valueOf(int i) {
            return i != 50 ? i != 90 ? i != 250 ? i != 280 ? MATCH_VIEW : HEIGHT_280 : HEIGHT_250 : HEIGHT_90 : HEIGHT_50;
        }

        public int toInt() {
            return this.f8506a;
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$a.class */
    public class C3839a extends BroadcastReceiver {
        public C3839a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Visibility.isScreenVisible(MoPubView.this.f8501d) && intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    MoPubView.this.m30519b(0);
                } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    MoPubView.this.m30519b(8);
                }
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubView$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$b.class */
    public interface AbstractC3840b {
        public static final int HEIGHT_250_INT = 250;
        public static final int HEIGHT_280_INT = 280;
        public static final int HEIGHT_50_INT = 50;
        public static final int HEIGHT_90_INT = 90;
        public static final int MATCH_VIEW_INT = -1;
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8503f = m30526a(context, attributeSet, MoPubAdSize.MATCH_VIEW);
        ManifestUtils.checkWebViewActivitiesDeclared(context);
        this.f8500c = context;
        this.f8501d = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        this.f8498a = AdViewControllerFactory.create(context, this);
        m30509k();
    }

    /* renamed from: a */
    public final MoPubAdSize m30526a(Context context, AttributeSet attributeSet, MoPubAdSize moPubAdSize) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C3878R.styleable.MoPubView, 0, 0);
        try {
            try {
                moPubAdSize = MoPubAdSize.valueOf(obtainStyledAttributes.getInteger(C3878R.styleable.MoPubView_moPubAdSize, moPubAdSize.toInt()));
            } catch (Resources.NotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Encountered a problem while setting the MoPubAdSize", e);
            }
            return moPubAdSize;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    /* renamed from: a */
    public Integer m30527a(int i) {
        AdViewController adViewController = this.f8498a;
        return adViewController == null ? Integer.valueOf(i) : adViewController.m30619a(i);
    }

    /* renamed from: a */
    public void m30528a() {
        MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
        BannerAdListener bannerAdListener = this.f8504g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerClicked(this);
        }
    }

    /* renamed from: a */
    public void m30525a(@NonNull WindowInsets windowInsets) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.setWindowInsets(windowInsets);
        }
    }

    /* renamed from: a */
    public void mo30524a(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        BannerAdListener bannerAdListener = this.f8504g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    /* renamed from: a */
    public void mo30521a(String str, Map<String, String> map) {
        if (this.f8498a != null) {
            if (TextUtils.isEmpty(str)) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Couldn't invoke custom event because the server did not specify one.");
                m30518b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (this.f8499b != null) {
                m30512h();
            }
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Loading custom event adapter.");
            if (Reflection.classFound("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")) {
                try {
                    this.f8499b = new Reflection.MethodBuilder(null, "create").setStatic(Class.forName("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")).addParam((Class<Class>) MoPubView.class, (Class) this).addParam((Class<Class>) String.class, (Class) str).addParam((Class<Class>) Map.class, (Class) map).addParam((Class<Class>) Long.TYPE, (Class) Long.valueOf(this.f8498a.getBroadcastIdentifier())).addParam((Class<Class>) AdReport.class, (Class) this.f8498a.getAdReport()).execute();
                    new Reflection.MethodBuilder(this.f8499b, "loadAd").setAccessible().execute();
                } catch (Exception e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error loading custom event", e);
                }
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Could not load custom event -- missing banner module");
            }
        }
    }

    /* renamed from: b */
    public void m30520b() {
        MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
        BannerAdListener bannerAdListener = this.f8504g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerCollapsed(this);
        }
    }

    /* renamed from: b */
    public final void m30519b(int i) {
        if (this.f8498a != null) {
            if (Visibility.isScreenVisible(i)) {
                this.f8498a.m30589m();
            } else {
                this.f8498a.m30591k();
            }
        }
    }

    /* renamed from: b */
    public boolean m30518b(@NonNull MoPubErrorCode moPubErrorCode) {
        AdViewController adViewController = this.f8498a;
        if (adViewController == null) {
            return false;
        }
        return adViewController.m30603b(moPubErrorCode);
    }

    /* renamed from: c */
    public void m30517c() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
        BannerAdListener bannerAdListener = this.f8504g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerLoaded(this);
        }
    }

    /* renamed from: d */
    public void m30516d() {
        BannerAdListener bannerAdListener = this.f8504g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerExpanded(this);
        }
    }

    public void destroy() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Destroy() called");
        m30505o();
        removeAllViews();
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30606b();
            this.f8498a = null;
        }
        if (this.f8499b != null) {
            m30512h();
            this.f8499b = null;
        }
    }

    /* renamed from: e */
    public void m30515e() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30600c();
        }
        m30517c();
    }

    /* renamed from: f */
    public void m30514f() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30598d();
        }
    }

    public void forceRefresh() {
        if (this.f8499b != null) {
            m30512h();
            this.f8499b = null;
        }
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30596f();
        }
    }

    /* renamed from: g */
    public void m30513g() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30597e();
        }
    }

    public Activity getActivity() {
        return (Activity) this.f8500c;
    }

    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    public int getAdHeight() {
        AdViewController adViewController = this.f8498a;
        return adViewController != null ? adViewController.getAdHeight() : 0;
    }

    public MoPubAdSize getAdSize() {
        return this.f8503f;
    }

    public String getAdUnitId() {
        AdViewController adViewController = this.f8498a;
        return adViewController != null ? adViewController.getAdUnitId() : null;
    }

    public int getAdWidth() {
        AdViewController adViewController = this.f8498a;
        return adViewController != null ? adViewController.getAdWidth() : 0;
    }

    public boolean getAutorefreshEnabled() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            return adViewController.getCurrentAutoRefreshStatus();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public BannerAdListener getBannerAdListener() {
        return this.f8504g;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }

    public String getKeywords() {
        AdViewController adViewController = this.f8498a;
        return adViewController != null ? adViewController.getKeywords() : null;
    }

    public Map<String, Object> getLocalExtras() {
        AdViewController adViewController = this.f8498a;
        return adViewController != null ? adViewController.m30594h() : new TreeMap();
    }

    public Location getLocation() {
        return (this.f8498a == null || !MoPub.canCollectPersonalInformation()) ? null : this.f8498a.getLocation();
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    public String getUserDataKeywords() {
        return (this.f8498a == null || !MoPub.canCollectPersonalInformation()) ? null : this.f8498a.getUserDataKeywords();
    }

    /* renamed from: h */
    public final void m30512h() {
        Object obj = this.f8499b;
        if (obj != null) {
            try {
                new Reflection.MethodBuilder(obj, "invalidate").setAccessible().execute();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error invalidating adapter", e);
            }
        }
    }

    /* renamed from: i */
    public void m30511i() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30591k();
        }
    }

    /* renamed from: j */
    public void m30510j() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30590l();
            m30528a();
        }
    }

    /* renamed from: k */
    public final void m30509k() {
        this.f8502e = new C3839a();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f8500c.registerReceiver(this.f8502e, intentFilter);
    }

    /* renamed from: l */
    public Point m30508l() {
        Point point = new Point(getWidth(), getHeight());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(getParent() == null || layoutParams == null || layoutParams.width >= 0)) {
            point.x = ((View) getParent()).getWidth();
        }
        if (this.f8503f != MoPubAdSize.MATCH_VIEW) {
            point.y = (int) Math.ceil(this.f8503f.toInt() * this.f8500c.getResources().getDisplayMetrics().density);
        } else if (!(getParent() == null || layoutParams == null || layoutParams.height >= 0)) {
            point.y = ((View) getParent()).getHeight();
        }
        return point;
    }

    public void loadAd() {
        if (this.f8498a != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
            this.f8498a.m30618a(m30508l());
            this.f8498a.loadAd();
        }
    }

    public void loadAd(MoPubAdSize moPubAdSize) {
        setAdSize(moPubAdSize);
        loadAd();
    }

    /* renamed from: m */
    public void m30507m() {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30589m();
        }
    }

    /* renamed from: n */
    public void m30506n() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Tracking impression. MoPubView internal.");
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30586p();
        }
    }

    /* renamed from: o */
    public final void m30505o() {
        try {
            this.f8500c.unregisterReceiver(this.f8502e);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 28) {
            m30525a(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 28) {
            m30525a(getRootWindowInsets());
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Visibility.hasScreenVisibilityChanged(this.f8501d, i)) {
            this.f8501d = i;
            m30519b(this.f8501d);
        }
    }

    public void setAdContentView(View view) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30605b(view);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, new Object[0]);
    }

    public void setAdSize(MoPubAdSize moPubAdSize) {
        this.f8503f = moPubAdSize;
    }

    public void setAdUnitId(String str) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.setAdUnitId(str);
        }
    }

    public void setAutorefreshEnabled(boolean z) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30601b(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.f8504g = bannerAdListener;
    }

    public void setKeywords(String str) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.setKeywords(str);
        }
    }

    public void setLocalExtras(Map<String, Object> map) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.m30608a(map);
        }
    }

    public void setLocation(Location location) {
        if (this.f8498a != null && MoPub.canCollectPersonalInformation()) {
            this.f8498a.setLocation(location);
        }
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f8498a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Deprecated
    public void setTimeout(int i) {
    }

    public void setUserDataKeywords(String str) {
        if (this.f8498a != null && MoPub.canCollectPersonalInformation()) {
            this.f8498a.setUserDataKeywords(str);
        }
    }
}
