package com.amazon.device.ads;

import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDExpandedController.class */
class DTBAdMRAIDExpandedController extends DTBAdMRAIDController {

    /* renamed from: a  reason: collision with root package name */
    static final String f6396a = "DTBAdMRAIDExpandedController";
    DTBAdMRAIDBannerController j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDExpandedController(DTBAdView dTBAdView) {
        super(dTBAdView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        g();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void a(Map<String, Object> map) {
        a("resize", "Expanded View does not allow resize");
        a("resize");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void b(Map<String, Object> map) {
        a("expand", "Expanded View does not allow expand");
        a("expand");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void c() {
        try {
            o();
        } catch (JSONException e) {
            DtbLog.c("Error:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void e() {
        g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void g() {
        DTBAdMRAIDBannerController a2;
        DTBAdActivity dTBAdActivity = (DTBAdActivity) DTBAdUtil.a(this.i);
        Intent intent = dTBAdActivity.getIntent();
        if (!(intent == null || (a2 = DTBAdMRAIDBannerController.a(intent.getIntExtra("cntrl_index", -1))) == null)) {
            a2.g();
        }
        dTBAdActivity.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        View.OnTouchListener ___lambda_dtbadmraidexpandedcontroller__l67ehajiekaq0v7boxr7napdry = new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDExpandedController$_L67EhajiEKAq0V7Boxr7nApdRY
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean a2;
                a2 = DTBAdMRAIDExpandedController.this.a(view, motionEvent);
                return a2;
            }
        };
        s();
        ViewGroup b2 = DTBAdUtil.b(this.i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(DTBAdUtil.a(50), DTBAdUtil.a(50));
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = 0;
        b2.addView(this.f6389d, layoutParams);
        a(___lambda_dtbadmraidexpandedcontroller__l67ehajiekaq0v7boxr7napdry);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void j() {
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    protected final MraidStateType p() {
        return MraidStateType.EXPANDED;
    }
}
