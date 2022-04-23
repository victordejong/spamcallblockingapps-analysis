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
class DTBAdMRAIDBannerController extends DTBAdMRAIDController implements DTBMRAIDCloseButtonListener {

    /* renamed from: a  reason: collision with root package name */
    DTBAdBannerListener f6380a;
    private ViewGroup l;
    private ViewGroup m;
    private ObjectAnimator n;
    private float o;
    private float p;
    private int q;
    private int r;
    private int s;
    private int t;
    private ViewGroup.LayoutParams u;
    private int v = j.incrementAndGet();
    private AnimationPoint w;
    private AnimationPoint x;
    private static List<WeakReference<DTBAdMRAIDBannerController>> k = new ArrayList();
    private static AtomicInteger j = new AtomicInteger(100);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint.class */
    public class AnimationPoint {

        /* renamed from: a  reason: collision with root package name */
        int f6381a;

        /* renamed from: b  reason: collision with root package name */
        int f6382b;

        /* renamed from: c  reason: collision with root package name */
        int f6383c;

        /* renamed from: d  reason: collision with root package name */
        int f6384d;

        AnimationPoint(int i, int i2, int i3, int i4) {
            this.f6381a = i;
            this.f6382b = i2;
            this.f6384d = i3;
            this.f6383c = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView.class */
    public class BackgroundView extends LinearLayout {
        BackgroundView(Context context) {
            super(context);
            setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDBannerController(DTBAdView dTBAdView, DTBAdBannerListener dTBAdBannerListener) {
        super(dTBAdView);
        this.f6380a = dTBAdBannerListener;
        this.f = this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        this.i.loadUrl("about:blank");
        a("unload");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBAdMRAIDBannerController a(int i) {
        for (WeakReference<DTBAdMRAIDBannerController> weakReference : k) {
            DTBAdMRAIDBannerController dTBAdMRAIDBannerController = weakReference.get();
            if (dTBAdMRAIDBannerController != null && dTBAdMRAIDBannerController.v == i) {
                return dTBAdMRAIDBannerController;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.i.getLayoutParams();
        this.i.setX(this.w.f6381a + ((this.x.f6381a - this.w.f6381a) * f.floatValue()));
        this.i.setY(this.w.f6382b + ((this.x.f6382b - this.w.f6382b) * f.floatValue()));
        layoutParams.width = (int) (this.w.f6384d + ((this.x.f6384d - this.w.f6384d) * f.floatValue()));
        layoutParams.height = (int) (this.w.f6383c + ((this.x.f6383c - this.w.f6383c) * f.floatValue()));
        this.i.setLayoutParams(layoutParams);
        this.i.invalidate();
        if (f.floatValue() == 1.0f) {
            a(DTBAdUtil.b(i), DTBAdUtil.b(i2));
            b(i3 + i, i4);
            a("resize");
            a(MraidStateType.RESIZED);
            this.n = null;
            this.i.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(int r10, int r11, boolean r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdMRAIDBannerController.a(int, int, boolean, int, int):void");
    }

    private void a(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.b(z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.i.getLayoutParams();
        this.i.setX(this.w.f6381a + ((this.x.f6381a - this.w.f6381a) * f.floatValue()));
        this.i.setY(this.w.f6382b + ((this.x.f6382b - this.w.f6382b) * f.floatValue()));
        layoutParams.width = (int) (this.w.f6384d + ((this.x.f6384d - this.w.f6384d) * f.floatValue()));
        layoutParams.height = (int) (this.w.f6383c + ((this.x.f6383c - this.w.f6383c) * f.floatValue()));
        this.i.setLayoutParams(layoutParams);
        this.i.invalidate();
        if (f.floatValue() == 1.0f) {
            c(i, 0);
            a(DTBAdUtil.b(this.x.f6384d), DTBAdUtil.b(this.x.f6383c));
            a(MraidStateType.EXPANDED);
            a("expand");
            this.n = null;
            this.i.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.i.getLayoutParams();
        this.i.setX(this.w.f6381a + ((this.x.f6381a - this.w.f6381a) * f.floatValue()));
        this.i.setY(this.w.f6382b + ((this.x.f6382b - this.w.f6382b) * f.floatValue()));
        layoutParams.width = (int) (this.w.f6384d + ((this.x.f6384d - this.w.f6384d) * f.floatValue()));
        layoutParams.height = (int) (this.w.f6383c + ((this.x.f6383c - this.w.f6383c) * f.floatValue()));
        this.i.setLayoutParams(layoutParams);
        this.i.invalidate();
        if (f.floatValue() == 1.0f) {
            this.i.f6418c = true;
            viewGroup.removeView(this.i);
            this.w = this.x;
            ViewGroup viewGroup2 = this.m;
            if (viewGroup2 != null) {
                ((ViewGroup) viewGroup2.getParent()).removeView(this.m);
                this.m = null;
                a(DTBAdUtil.b(this.w.f6384d), DTBAdUtil.b(this.w.f6383c));
            }
            this.l.addView(this.i, this.u);
            this.l.requestLayout();
            q();
            a(MraidStateType.DEFAULT);
            a(EventConstants.CLOSE);
            this.l = null;
            this.n = null;
            if (z) {
                new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$jOPGZD0cboPRqIRkjaSGrm_Esic
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdMRAIDBannerController.this.y();
                    }
                }, 500L);
            }
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$VRVxWzm72QrSskWgk6O0p1BkqQQ
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.x();
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final boolean z, int i) {
        ViewGroup viewGroup;
        AnimationPoint animationPoint = this.w;
        this.w = this.x;
        this.x = animationPoint;
        final ViewGroup viewGroup2 = (ViewGroup) this.i.getParent();
        if (!(this.f6389d == null || (viewGroup = (ViewGroup) this.f6389d.getParent()) == null)) {
            viewGroup.removeView(this.f6389d);
            this.f6389d = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.n = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$yp0swwtiM49ljml3I5lkmTrPTH0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.a(viewGroup2, z, valueAnimator);
            }
        });
        this.n.setDuration(i);
        this.n.start();
    }

    private void b(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$OOJFLO8IOrvHzvKaeoGkh26GX_A
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.a(z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = this.i.getLayoutParams();
        this.i.setX(this.w.f6381a + ((this.x.f6381a - this.w.f6381a) * f.floatValue()));
        this.i.setY(this.w.f6382b + ((this.x.f6382b - this.w.f6382b) * f.floatValue()));
        layoutParams.width = (int) (this.w.f6384d + ((this.x.f6384d - this.w.f6384d) * f.floatValue()));
        layoutParams.height = (int) (this.w.f6383c + ((this.x.f6383c - this.w.f6383c) * f.floatValue()));
        this.i.setLayoutParams(layoutParams);
        this.i.invalidate();
        if (f.floatValue() == 1.0f) {
            this.i.f6418c = true;
            viewGroup.removeView(this.i);
            this.w = this.x;
            this.l.addView(this.i, this.u);
            this.l.requestLayout();
            this.i.invalidate();
            q();
            this.l = null;
            a(DTBAdUtil.b(this.x.f6384d), DTBAdUtil.b(this.x.f6383c));
            a(MraidStateType.DEFAULT);
            this.n = null;
            a(EventConstants.CLOSE);
            if (z) {
                new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$2VgsQ1x_Q7rLa4UG8wmXanz5qHU
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdMRAIDBannerController.this.A();
                    }
                }, 500L);
            }
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$wXQkhxHtqWxI2xTH42Y_UZ2_iVU
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.z();
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final boolean z, int i) {
        AnimationPoint animationPoint = this.w;
        this.w = this.x;
        this.x = animationPoint;
        animationPoint.f6383c = this.t;
        this.x.f6384d = this.s;
        this.x.f6381a = this.q;
        this.x.f6382b = this.r;
        final ViewGroup viewGroup = (ViewGroup) this.i.getParent();
        if (this.f6389d != null) {
            viewGroup.removeView(this.f6389d);
            this.f6389d = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.n = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$DdM8da3Xb1ODXGeCsL_71WOYCJw
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.b(viewGroup, z, valueAnimator);
            }
        });
        this.n.setDuration(i);
        this.n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Map map) {
        final boolean z;
        int i;
        int i2;
        int intValue;
        if (((String) map.get("url")) != null) {
            String str = (String) map.get("url");
            Activity a2 = DTBAdUtil.a(this.i);
            Intent intent = new Intent(a2, DTBAdActivity.class);
            if (str != null) {
                intent.putExtra("url", str);
            }
            intent.putExtra("ad_state", "expanded");
            intent.putExtra("cntrl_index", this.v);
            intent.putExtra("two_part_expand", true);
            if (map.get("orientation") != null) {
                intent.putExtra("orientation", (Serializable) map.get("orientation"));
            }
            a2.startActivity(intent);
            a("expand");
            a(MraidStateType.EXPANDED);
            k.add(new WeakReference<>(this));
            return;
        }
        this.o = this.i.getX();
        this.p = this.i.getY();
        ViewGroup b2 = DTBAdUtil.b(this.i);
        int[] iArr = new int[2];
        this.i.getLocationInWindow(iArr);
        this.l = (ViewGroup) this.i.getParent();
        this.i.f6418c = true;
        this.l.removeView(this.i);
        int[] iArr2 = new int[2];
        b2.getLocationInWindow(iArr2);
        int height = b2.getHeight();
        final int width = b2.getWidth();
        this.w = new AnimationPoint(iArr[0] - iArr2[0], iArr[1] - iArr2[1], this.i.getWidth(), this.i.getHeight());
        if (!map.containsKey("position") || !(map.get("position") instanceof Map)) {
            i = height;
            i2 = width;
            z = false;
        } else {
            Map map2 = (Map) map.get("position");
            i2 = (!map2.containsKey("width") || (intValue = ((Integer) map2.get("width")).intValue()) <= 0) ? width : DTBAdUtil.a(intValue);
            i = height;
            if (map2.containsKey("height")) {
                int intValue2 = ((Integer) map2.get("height")).intValue();
                i = height;
                if (intValue2 > 0) {
                    i = DTBAdUtil.a(intValue2);
                }
            }
            z = map2.containsKey("useCustomClose") ? ((Boolean) map2.get("useCustomClose")).booleanValue() : false;
        }
        BackgroundView backgroundView = new BackgroundView(this.i.getContext());
        this.m = backgroundView;
        backgroundView.setBackgroundColor(0);
        b2.addView(backgroundView, -1, -1);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.i.getWidth(), this.i.getHeight());
        marginLayoutParams.leftMargin = this.w.f6381a;
        marginLayoutParams.topMargin = this.w.f6382b;
        b2.bringChildToFront(backgroundView);
        backgroundView.addView(this.i, marginLayoutParams);
        this.i.setX(this.w.f6381a);
        this.i.setY(this.w.f6382b);
        this.x = new AnimationPoint(0, 0, i2, i);
        a(DTBAdUtil.b(i2), DTBAdUtil.b(i));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.n = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF_jzag
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.a(width, z, valueAnimator);
            }
        });
        this.n.setDuration(500L);
        this.n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        this.f6389d.setVisibility(this.e ? 4 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        this.i.loadUrl("about:blank");
        a("unload");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        this.i.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y() {
        this.i.loadUrl("about:blank");
        a("unload");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        this.i.a(true);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public final void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void a(Map<String, Object> map) {
        if (this.g == MraidStateType.DEFAULT || this.g == MraidStateType.RESIZED) {
            try {
                final int intValue = map.containsKey("offsetX") ? ((Integer) map.get("offsetX")).intValue() : 0;
                final int intValue2 = map.containsKey("offsetY") ? ((Integer) map.get("offsetY")).intValue() : 0;
                final int intValue3 = ((Integer) map.get("width")).intValue();
                final int intValue4 = ((Integer) map.get("height")).intValue();
                final boolean booleanValue = ((Boolean) map.get("allowOffscreen")).booleanValue();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$kNgQrjtFuWoXYh4ikOfsaq5Wwys
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdMRAIDBannerController.this.a(intValue, intValue2, booleanValue, intValue3, intValue4);
                    }
                });
            } catch (Exception e) {
                a("resize", "invalid input parameters");
                a("resize");
            }
        } else {
            a("resize", "invalid current state");
            a("resize");
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public final void b() {
        ActivityMonitor.a().f6364b = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void b(final Map<String, Object> map) {
        if (!this.g.equals(MraidStateType.DEFAULT)) {
            a("expand", "current state does not allow transition to expand");
            a("expand");
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$HKxfA8lQ6pfOTwDoueZFTvHSuzs
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.c(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void c() {
        try {
            if (!this.f6388c) {
                o();
            }
        } catch (JSONException e) {
            DtbLog.c("Error:" + e.getMessage());
        }
        this.u = this.i.getLayoutParams();
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    protected final String d() {
        return "inline";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void e() {
        if (this.g == MraidStateType.RESIZED) {
            a(500, false);
        } else if (this.g == MraidStateType.EXPANDED) {
            b(500, false);
        } else if (this.g == MraidStateType.DEFAULT) {
            a(MraidStateType.HIDDEN);
            a(EventConstants.CLOSE);
        } else {
            a(EventConstants.CLOSE, "Command is not allowed in a given ad state:" + this.g.toString());
            a(EventConstants.CLOSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void f() {
        if (this.g == MraidStateType.RESIZED) {
            a(10, true);
        } else if (this.g == MraidStateType.EXPANDED) {
            b(10, true);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$8oS9tYv0Mh77tENBO5eKlfg44Jc
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.w();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void g() {
        a(MraidStateType.DEFAULT);
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    public final void h() {
        if (this.g == MraidStateType.EXPANDED && this.f6389d != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$3hAoKoosx6a_ELot18ftnhbvHz0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.v();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void i() {
        final DTBAdView dTBAdView = this.i;
        if (this.f6380a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$hgbHDJhnItvslQgZJnZK6tfHLS0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.a(dTBAdView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void j() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDBannerController$zhSchKIUIClyWMHFxbTwe3vFAjc
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.u();
            }
        });
        ActivityMonitor.a().f6364b = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void k() {
        super.k();
    }
}
