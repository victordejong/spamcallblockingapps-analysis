package com.amazon.device.ads;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController.class */
public class DTBAdMRAIDBannerController extends DTBAdMRAIDController implements DTBMRAIDCloseButtonListener {

    /* renamed from: a */
    DTBAdBannerListener f11695a;

    /* renamed from: l */
    private ViewGroup f11696l;

    /* renamed from: m */
    private ViewGroup f11697m;

    /* renamed from: n */
    private ObjectAnimator f11698n;

    /* renamed from: o */
    private float f11699o;

    /* renamed from: p */
    private float f11700p;

    /* renamed from: q */
    private int f11701q;

    /* renamed from: r */
    private int f11702r;

    /* renamed from: s */
    private int f11703s;

    /* renamed from: t */
    private int f11704t;

    /* renamed from: u */
    private ViewGroup.LayoutParams f11705u;

    /* renamed from: v */
    private int f11706v = f11693j.incrementAndGet();

    /* renamed from: w */
    private AnimationPoint f11707w;

    /* renamed from: x */
    private AnimationPoint f11708x;

    /* renamed from: k */
    private static List<WeakReference<DTBAdMRAIDBannerController>> f11694k = new ArrayList();

    /* renamed from: j */
    private static AtomicInteger f11693j = new AtomicInteger(100);

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint.class */
    public class AnimationPoint {

        /* renamed from: a */
        int f11709a;

        /* renamed from: b */
        int f11710b;

        /* renamed from: c */
        int f11711c;

        /* renamed from: d */
        int f11712d;

        AnimationPoint(int i, int i2, int i3, int i4) {
            DTBAdMRAIDBannerController.this = r4;
            this.f11709a = i;
            this.f11710b = i2;
            this.f11712d = i3;
            this.f11711c = i4;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView.class */
    public class BackgroundView extends LinearLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        BackgroundView(Context context) {
            super(context);
            DTBAdMRAIDBannerController.this = r4;
            setOrientation(1);
        }
    }

    public DTBAdMRAIDBannerController(DTBAdView dTBAdView, DTBAdBannerListener dTBAdBannerListener) {
        super(dTBAdView);
        this.f11695a = dTBAdBannerListener;
        this.f11720f = this;
    }

    /* renamed from: A */
    public /* synthetic */ void m39057A() {
        this.f11723i.loadUrl("about:blank");
        m39030a("unload");
    }

    /* renamed from: a */
    public static DTBAdMRAIDBannerController m39056a(int i) {
        for (WeakReference<DTBAdMRAIDBannerController> weakReference : f11694k) {
            DTBAdMRAIDBannerController dTBAdMRAIDBannerController = weakReference.get();
            if (dTBAdMRAIDBannerController != null && dTBAdMRAIDBannerController.f11706v == i) {
                return dTBAdMRAIDBannerController;
            }
        }
        return null;
    }

    /* renamed from: a */
    public /* synthetic */ void m39055a(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.f11723i.getLayoutParams();
        this.f11723i.setX(this.f11707w.f11709a + ((this.f11708x.f11709a - this.f11707w.f11709a) * f.floatValue()));
        this.f11723i.setY(this.f11707w.f11710b + ((this.f11708x.f11710b - this.f11707w.f11710b) * f.floatValue()));
        layoutParams.width = (int) (this.f11707w.f11712d + ((this.f11708x.f11712d - this.f11707w.f11712d) * f.floatValue()));
        layoutParams.height = (int) (this.f11707w.f11711c + ((this.f11708x.f11711c - this.f11707w.f11711c) * f.floatValue()));
        this.f11723i.setLayoutParams(layoutParams);
        this.f11723i.invalidate();
        if (f.floatValue() == 1.0f) {
            m39037a(DTBAdUtil.m38955b(i), DTBAdUtil.m38955b(i2));
            m39026b(i3 + i, i4);
            m39030a("resize");
            m39031a(MraidStateType.RESIZED);
            this.f11698n = null;
            this.f11723i.m38945a(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void m39054a(int r10, int r11, boolean r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdMRAIDBannerController.m39054a(int, int, boolean, int, int):void");
    }

    /* renamed from: a */
    private void m39053a(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m39046b(z, i);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m39052a(int i, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.f11723i.getLayoutParams();
        this.f11723i.setX(this.f11707w.f11709a + ((this.f11708x.f11709a - this.f11707w.f11709a) * f.floatValue()));
        this.f11723i.setY(this.f11707w.f11710b + ((this.f11708x.f11710b - this.f11707w.f11710b) * f.floatValue()));
        layoutParams.width = (int) (this.f11707w.f11712d + ((this.f11708x.f11712d - this.f11707w.f11712d) * f.floatValue()));
        layoutParams.height = (int) (this.f11707w.f11711c + ((this.f11708x.f11711c - this.f11707w.f11711c) * f.floatValue()));
        this.f11723i.setLayoutParams(layoutParams);
        this.f11723i.invalidate();
        if (f.floatValue() == 1.0f) {
            m39022c(i, 0);
            m39037a(DTBAdUtil.m38955b(this.f11708x.f11712d), DTBAdUtil.m38955b(this.f11708x.f11711c));
            m39031a(MraidStateType.EXPANDED);
            m39030a("expand");
            this.f11698n = null;
            this.f11723i.m38945a(true);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m39051a(View view) {
    }

    /* renamed from: a */
    public /* synthetic */ void m39050a(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.f11723i.getLayoutParams();
        this.f11723i.setX(this.f11707w.f11709a + ((this.f11708x.f11709a - this.f11707w.f11709a) * f.floatValue()));
        this.f11723i.setY(this.f11707w.f11710b + ((this.f11708x.f11710b - this.f11707w.f11710b) * f.floatValue()));
        layoutParams.width = (int) (this.f11707w.f11712d + ((this.f11708x.f11712d - this.f11707w.f11712d) * f.floatValue()));
        layoutParams.height = (int) (this.f11707w.f11711c + ((this.f11708x.f11711c - this.f11707w.f11711c) * f.floatValue()));
        this.f11723i.setLayoutParams(layoutParams);
        this.f11723i.invalidate();
        if (f.floatValue() == 1.0f) {
            this.f11723i.f11781c = true;
            viewGroup.removeView(this.f11723i);
            this.f11707w = this.f11708x;
            ViewGroup viewGroup2 = this.f11697m;
            if (viewGroup2 != null) {
                ((ViewGroup) viewGroup2.getParent()).removeView(this.f11697m);
                this.f11697m = null;
                m39037a(DTBAdUtil.m38955b(this.f11707w.f11712d), DTBAdUtil.m38955b(this.f11707w.f11711c));
            }
            this.f11696l.addView(this.f11723i, this.f11705u);
            this.f11696l.requestLayout();
            m39010q();
            m39031a(MraidStateType.DEFAULT);
            m39030a(EventConstants.CLOSE);
            this.f11696l = null;
            this.f11698n = null;
            if (z) {
                new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$jOPGZD0cboPRqIRkjaSGrm_Esic
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdMRAIDBannerController.this.m39040y();
                    }
                }, 500L);
            }
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$VRVxWzm72QrSskWgk6O0p1BkqQQ
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39041x();
                }
            }, 100L);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m39049a(final boolean z, int i) {
        ViewGroup viewGroup;
        AnimationPoint animationPoint = this.f11707w;
        this.f11707w = this.f11708x;
        this.f11708x = animationPoint;
        final ViewGroup viewGroup2 = (ViewGroup) this.f11723i.getParent();
        if (this.f11718d != null && (viewGroup = (ViewGroup) this.f11718d.getParent()) != null) {
            viewGroup.removeView(this.f11718d);
            this.f11718d = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f11698n = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$yp0swwtiM49ljml3I5lkmTrPTH0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m39050a(viewGroup2, z, valueAnimator);
            }
        });
        this.f11698n.setDuration(i);
        this.f11698n.start();
    }

    /* renamed from: b */
    private void m39048b(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$OOJFLO8IOrvHzvKaeoGkh26GX_A
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m39049a(z, i);
            }
        });
    }

    /* renamed from: b */
    public /* synthetic */ void m39047b(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.f11723i.getLayoutParams();
        this.f11723i.setX(this.f11707w.f11709a + ((this.f11708x.f11709a - this.f11707w.f11709a) * f.floatValue()));
        this.f11723i.setY(this.f11707w.f11710b + ((this.f11708x.f11710b - this.f11707w.f11710b) * f.floatValue()));
        layoutParams.width = (int) (this.f11707w.f11712d + ((this.f11708x.f11712d - this.f11707w.f11712d) * f.floatValue()));
        layoutParams.height = (int) (this.f11707w.f11711c + ((this.f11708x.f11711c - this.f11707w.f11711c) * f.floatValue()));
        this.f11723i.setLayoutParams(layoutParams);
        this.f11723i.invalidate();
        if (f.floatValue() == 1.0f) {
            this.f11723i.f11781c = true;
            viewGroup.removeView(this.f11723i);
            this.f11707w = this.f11708x;
            this.f11696l.addView(this.f11723i, this.f11705u);
            this.f11696l.requestLayout();
            this.f11723i.invalidate();
            m39010q();
            this.f11696l = null;
            m39037a(DTBAdUtil.m38955b(this.f11708x.f11712d), DTBAdUtil.m38955b(this.f11708x.f11711c));
            m39031a(MraidStateType.DEFAULT);
            this.f11698n = null;
            m39030a(EventConstants.CLOSE);
            if (z) {
                new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$2VgsQ1x_Q7rLa4UG8wmXanz5qHU
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdMRAIDBannerController.this.m39057A();
                    }
                }, 500L);
            }
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$wXQkhxHtqWxI2xTH42Y_UZ2_iVU
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39039z();
                }
            }, 100L);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m39046b(final boolean z, int i) {
        AnimationPoint animationPoint = this.f11707w;
        this.f11707w = this.f11708x;
        this.f11708x = animationPoint;
        animationPoint.f11711c = this.f11704t;
        this.f11708x.f11712d = this.f11703s;
        this.f11708x.f11709a = this.f11701q;
        this.f11708x.f11710b = this.f11702r;
        final ViewGroup viewGroup = (ViewGroup) this.f11723i.getParent();
        if (this.f11718d != null) {
            viewGroup.removeView(this.f11718d);
            this.f11718d = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f11698n = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$DdM8da3Xb1ODXGeCsL_71WOYCJw
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m39047b(viewGroup, z, valueAnimator);
            }
        });
        this.f11698n.setDuration(i);
        this.f11698n.start();
    }

    /* renamed from: c */
    public /* synthetic */ void m39045c(Map map) {
        boolean z;
        int i;
        int i2;
        int intValue;
        if (((String) map.get("url")) != null) {
            String str = (String) map.get("url");
            Activity m38960a = DTBAdUtil.m38960a(this.f11723i);
            Intent intent = new Intent(m38960a, DTBAdActivity.class);
            if (str != null) {
                intent.putExtra("url", str);
            }
            intent.putExtra("ad_state", "expanded");
            intent.putExtra("cntrl_index", this.f11706v);
            intent.putExtra("two_part_expand", true);
            if (map.get("orientation") != null) {
                intent.putExtra("orientation", (Serializable) map.get("orientation"));
            }
            m38960a.startActivity(intent);
            m39030a("expand");
            m39031a(MraidStateType.EXPANDED);
            f11694k.add(new WeakReference<>(this));
            return;
        }
        this.f11699o = this.f11723i.getX();
        this.f11700p = this.f11723i.getY();
        ViewGroup m38954b = DTBAdUtil.m38954b(this.f11723i);
        int[] iArr = new int[2];
        this.f11723i.getLocationInWindow(iArr);
        this.f11696l = (ViewGroup) this.f11723i.getParent();
        this.f11723i.f11781c = true;
        this.f11696l.removeView(this.f11723i);
        int[] iArr2 = new int[2];
        m38954b.getLocationInWindow(iArr2);
        int height = m38954b.getHeight();
        final int width = m38954b.getWidth();
        this.f11707w = new AnimationPoint(iArr[0] - iArr2[0], iArr[1] - iArr2[1], this.f11723i.getWidth(), this.f11723i.getHeight());
        if (!map.containsKey("position") || !(map.get("position") instanceof Map)) {
            i = height;
            i2 = width;
            z = false;
        } else {
            Map map2 = (Map) map.get("position");
            i2 = (!map2.containsKey("width") || (intValue = ((Integer) map2.get("width")).intValue()) <= 0) ? width : DTBAdUtil.m38961a(intValue);
            i = height;
            if (map2.containsKey("height")) {
                int intValue2 = ((Integer) map2.get("height")).intValue();
                i = height;
                if (intValue2 > 0) {
                    i = DTBAdUtil.m38961a(intValue2);
                }
            }
            z = map2.containsKey("useCustomClose") ? ((Boolean) map2.get("useCustomClose")).booleanValue() : false;
        }
        BackgroundView backgroundView = new BackgroundView(this.f11723i.getContext());
        this.f11697m = backgroundView;
        backgroundView.setBackgroundColor(0);
        m38954b.addView(backgroundView, -1, -1);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.f11723i.getWidth(), this.f11723i.getHeight());
        marginLayoutParams.leftMargin = this.f11707w.f11709a;
        marginLayoutParams.topMargin = this.f11707w.f11710b;
        m38954b.bringChildToFront(backgroundView);
        backgroundView.addView(this.f11723i, marginLayoutParams);
        this.f11723i.setX(this.f11707w.f11709a);
        this.f11723i.setY(this.f11707w.f11710b);
        this.f11708x = new AnimationPoint(0, 0, i2, i);
        m39038a(DTBAdUtil.m38955b(i2), DTBAdUtil.m38955b(i));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f11698n = ofFloat;
        final boolean z2 = z;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF_jzag
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m39052a(width, z2, valueAnimator);
            }
        });
        this.f11698n.setDuration(500L);
        this.f11698n.start();
    }

    /* renamed from: u */
    public /* synthetic */ void m39044u() {
    }

    /* renamed from: v */
    public /* synthetic */ void m39043v() {
        this.f11718d.setVisibility(this.f11719e ? 4 : 0);
    }

    /* renamed from: w */
    public /* synthetic */ void m39042w() {
        this.f11723i.loadUrl("about:blank");
        m39030a("unload");
    }

    /* renamed from: x */
    public /* synthetic */ void m39041x() {
        this.f11723i.m38945a(true);
    }

    /* renamed from: y */
    public /* synthetic */ void m39040y() {
        this.f11723i.loadUrl("about:blank");
        m39030a("unload");
    }

    /* renamed from: z */
    public /* synthetic */ void m39039z() {
        this.f11723i.m38945a(true);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    /* renamed from: a */
    public final void mo39000a() {
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: a */
    public final void mo38998a(Map<String, Object> map) {
        if (this.f11721g != MraidStateType.DEFAULT && this.f11721g != MraidStateType.RESIZED) {
            m39029a("resize", "invalid current state");
            m39030a("resize");
            return;
        }
        try {
            int intValue = map.containsKey("offsetX") ? ((Integer) map.get("offsetX")).intValue() : 0;
            int intValue2 = map.containsKey("offsetY") ? ((Integer) map.get("offsetY")).intValue() : 0;
            final int intValue3 = ((Integer) map.get("width")).intValue();
            final int intValue4 = ((Integer) map.get("height")).intValue();
            final boolean booleanValue = ((Boolean) map.get("allowOffscreen")).booleanValue();
            final int i = intValue;
            final int i2 = intValue2;
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$kNgQrjtFuWoXYh4ikOfsaq5Wwys
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39054a(i, i2, booleanValue, intValue3, intValue4);
                }
            });
        } catch (Exception e) {
            m39029a("resize", "invalid input parameters");
            m39030a("resize");
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    /* renamed from: b */
    public final void mo38997b() {
        ActivityMonitor.m39080a().f11666b = null;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: b */
    public final void mo38996b(final Map<String, Object> map) {
        if (this.f11721g.equals(MraidStateType.DEFAULT)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$HKxfA8lQ6pfOTwDoueZFTvHSuzs
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39045c(map);
                }
            });
            return;
        }
        m39029a("expand", "current state does not allow transition to expand");
        m39030a("expand");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: c */
    public final void mo38995c() {
        try {
            if (!this.f11717c) {
                m39011o();
            }
        } catch (JSONException e) {
            DtbLog.m38821c("Error:" + e.getMessage());
        }
        this.f11705u = this.f11723i.getLayoutParams();
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: d */
    protected final String mo38993d() {
        return "inline";
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: e */
    public final void mo38992e() {
        if (this.f11721g == MraidStateType.RESIZED) {
            m39053a(500, false);
        } else if (this.f11721g == MraidStateType.EXPANDED) {
            m39048b(500, false);
        } else if (this.f11721g == MraidStateType.DEFAULT) {
            m39031a(MraidStateType.HIDDEN);
            m39030a(EventConstants.CLOSE);
        } else {
            m39029a(EventConstants.CLOSE, "Command is not allowed in a given ad state:" + this.f11721g.toString());
            m39030a(EventConstants.CLOSE);
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: f */
    public final void mo38991f() {
        if (this.f11721g == MraidStateType.RESIZED) {
            m39053a(10, true);
        } else if (this.f11721g == MraidStateType.EXPANDED) {
            m39048b(10, true);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$8oS9tYv0Mh77tENBO5eKlfg44Jc
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39042w();
                }
            });
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: g */
    public final void mo39003g() {
        m39031a(MraidStateType.DEFAULT);
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    /* renamed from: h */
    public final void mo38926h() {
        if (this.f11721g != MraidStateType.EXPANDED || this.f11718d == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$3hAoKoosx6a_ELot18ftnhbvHz0
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m39043v();
            }
        });
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: i */
    public final void mo38990i() {
        final DTBAdView dTBAdView = this.f11723i;
        if (this.f11695a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$hgbHDJhnItvslQgZJnZK6tfHLS0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m39051a(dTBAdView);
                }
            });
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: j */
    public final void mo38989j() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$zhSchKIUIClyWMHFxbTwe3vFAjc
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m39044u();
            }
        });
        ActivityMonitor.m39080a().f11666b = this;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: k */
    public final void mo38988k() {
        super.mo38988k();
    }
}
