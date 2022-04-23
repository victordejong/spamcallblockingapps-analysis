package p131c.p396i.p397a.p398e;

import android.content.Context;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.library.p518ad.core.AdInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import p131c.p396i.p397a.p399f.p400a.AbstractC6525c;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.e.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/e.class */
public abstract class AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener {
    public int clickTimes;
    public int[] layoutIndex;
    public AbstractC6515g mAdEventListener;
    public AdInfo mAdInfo;
    public final String mAdSource;
    public Runnable mClickRunnable;
    public List<Integer> mClickViews;
    public boolean mIsShow;
    public final int[] mLocation;
    public int mPosition;
    public final C6618e sharedPre;
    public int showTimes;

    /* renamed from: c.i.a.e.e$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/e/e$a.class */
    public class RunnableC6513a implements Runnable {
        public RunnableC6513a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractViewTreeObserver$OnScrollChangedListenerC6512e.this.onRegisterViewForInteraction();
            C6614a.m20363b("mClickRunnable isClickable:", true);
        }
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e(Context context, String str) {
        this(context, str, null);
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e(Context context, String str, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLocation = new int[2];
        this.mClickViews = new ArrayList();
        this.mClickRunnable = new RunnableC6513a();
        this.mAdSource = str;
        inflateAdView();
        this.sharedPre = C6618e.m20334a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void registerViewForInteraction() {
        /*
            r6 = this;
            c.i.a.b$e r0 = p131c.p396i.p397a.C6490b.m20688k()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0016
            r0 = r7
            r1 = r6
            com.library.ad.core.AdInfo r1 = r1.getAdInfo()
            long r0 = r0.m20684a(r1)
            r8 = r0
            goto L_0x001a
        L_0x0016:
            r0 = -1
            r8 = r0
        L_0x001a:
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004f
            c.i.b.a r0 = p131c.p396i.p418b.C6619a.m20316b()
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "DC_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r6
            java.lang.String r1 = r1.getPlaceId()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r12
            java.lang.String r1 = r1.toString()
            long r0 = r0.m20314b(r1)
            r10 = r0
        L_0x004f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "placeId:"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.getPlaceId()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "点击延时"
            r1[r2] = r3
            r1 = r0
            r2 = 1
            r3 = r10
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r1[r2] = r3
            r1 = r0
            r2 = 2
            r3 = r7
            java.lang.String r3 = r3.toString()
            r1[r2] = r3
            p131c.p396i.p397a.p417j.C6614a.m20363b(r0)
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0090
            r0 = r6
            r0.onRegisterViewForInteraction()
            goto L_0x0099
        L_0x0090:
            r0 = r6
            java.lang.Runnable r0 = r0.mClickRunnable
            r1 = r10
            p131c.p396i.p397a.p417j.C6614a.m20366a(r0, r1)
        L_0x0099:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e.registerViewForInteraction():void");
    }

    public final AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> bindAdData(AdData addata, AbstractC6515g gVar) {
        this.mAdEventListener = gVar;
        onBindData(addata);
        registerViewForInteraction();
        return this;
    }

    public void checkIsShow() {
        if (!this.mIsShow) {
            getLocationOnScreen(this.mLocation);
            boolean z = true;
            if (this.mLocation[1] >= getResources().getDisplayMetrics().heightPixels) {
                z = false;
            }
            this.mIsShow = z;
            if (z) {
                onAdShow();
                getViewTreeObserver().removeOnScrollChangedListener(this);
            }
        }
    }

    public void clearAdData() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (!this.mIsShow) {
            getLocationOnScreen(this.mLocation);
            boolean z = true;
            if (this.mLocation[1] >= getResources().getDisplayMetrics().heightPixels) {
                z = false;
            }
            this.mIsShow = z;
            if (z) {
                onAdShow();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdInfo getAdInfo() {
        if (this.mAdInfo == null) {
            this.mAdInfo = new AdInfo();
        }
        return this.mAdInfo;
    }

    public String getAdSource() {
        return this.mAdSource;
    }

    public int getAdType() {
        return getAdInfo().getAdType();
    }

    public List<Integer> getClickViews() {
        String str = "getClickViews:" + Arrays.toString(this.mClickViews.toArray());
        return this.mClickViews;
    }

    public int getLayoutId() {
        int layoutIndex = layoutIndex();
        int[] layoutIds = layoutIds();
        if (layoutIds == null) {
            return -1;
        }
        if (layoutIndex < layoutIds.length && layoutIndex >= 0) {
            return layoutIds[layoutIndex];
        }
        if (layoutIds.length > 0) {
            return layoutIds[0];
        }
        return -1;
    }

    public int getLayoutType() {
        return getAdInfo().getLayoutType();
    }

    public String getPlaceId() {
        return getAdInfo().getPlaceId();
    }

    public String getUnitId() {
        return getAdInfo().getUnitId();
    }

    public void inflateAdView() {
    }

    public boolean isDefault() {
        return getAdInfo().isDefault();
    }

    public abstract int[] layoutIds();

    public int layoutIndex() {
        if (this.layoutIndex == null) {
            return 0;
        }
        int intValue = this.sharedPre.m20332a(getClass().getName(), 0).intValue();
        getClass().getName();
        int[] iArr = this.layoutIndex;
        if (intValue < iArr.length) {
            return iArr[intValue];
        }
        return 0;
    }

    public void onAdClick() {
        AdInfo adInfo = getAdInfo();
        int i = this.clickTimes + 1;
        this.clickTimes = i;
        C6549b.m20532a(new C6550c(adInfo, 302, String.valueOf(i)));
        AbstractC6515g gVar = this.mAdEventListener;
        if (gVar != null) {
            gVar.mo3232a(getAdInfo(), this.mPosition);
        }
        C6549b.m20533a();
    }

    public void onAdShow() {
        AdInfo adInfo = getAdInfo();
        int i = this.showTimes + 1;
        this.showTimes = i;
        C6549b.m20532a(new C6550c(adInfo, 301, String.valueOf(i)));
        AbstractC6515g gVar = this.mAdEventListener;
        if (gVar != null) {
            gVar.mo3230d(getAdInfo(), this.mPosition);
        }
        int intValue = this.sharedPre.m20332a(getClass().getName(), 0).intValue();
        int[] iArr = this.layoutIndex;
        int i2 = 0;
        if (iArr != null) {
            i2 = intValue >= iArr.length ? 0 : intValue + 1;
        }
        this.sharedPre.m20327b(getClass().getName(), i2);
        if (!isDefault()) {
            String str = "记录广告位:" + getPlaceId();
            String str2 = getUnitId() + " ,展示时间" + new Date();
            this.sharedPre.m20331a("key_place_frequency_" + getPlaceId(), SystemClock.elapsedRealtime());
            return;
        }
        String str3 = "不记录广告位:" + getPlaceId() + ",因为是补余广告";
    }

    public abstract void onBindData(AdData addata);

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnScrollChangedListener(this);
        AbstractC6515g gVar = this.mAdEventListener;
        if (gVar != null) {
            gVar.mo3231b(getAdInfo(), this.mPosition);
        }
        this.mAdEventListener = null;
        Runnable runnable = this.mClickRunnable;
        if (runnable != null) {
            C6614a.m20364b(runnable);
        }
        clearAdData();
        super.onDetachedFromWindow();
    }

    public void onRegisterViewForInteraction() {
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        checkIsShow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        checkIsShow();
        if (!this.mIsShow) {
            getViewTreeObserver().addOnScrollChangedListener(this);
        }
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> setAdInfo(AdInfo adInfo) {
        this.mAdInfo = adInfo;
        adInfo.setAdSource(this.mAdSource);
        return this;
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> setClickViews(int i) {
        String str = "setClickViews:" + i;
        this.mClickViews = AbstractC6525c.C6526a.m20572a(i);
        return this;
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> setLayoutIndex(int[] iArr) {
        this.layoutIndex = iArr;
        return this;
    }

    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> setPosition(int i) {
        this.mPosition = i;
        return this;
    }
}
