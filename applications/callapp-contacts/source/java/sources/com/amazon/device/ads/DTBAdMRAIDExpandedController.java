package com.amazon.device.ads;

import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDExpandedController.class */
public class DTBAdMRAIDExpandedController extends DTBAdMRAIDController {

    /* renamed from: a */
    static final String f11736a = "DTBAdMRAIDExpandedController";

    /* renamed from: j */
    DTBAdMRAIDBannerController f11737j;

    public DTBAdMRAIDExpandedController(DTBAdView dTBAdView) {
        super(dTBAdView);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m39004a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            mo39003g();
            return true;
        }
        return false;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: a */
    public final void mo38998a(Map<String, Object> map) {
        m39029a("resize", "Expanded View does not allow resize");
        m39030a("resize");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: b */
    public final void mo38996b(Map<String, Object> map) {
        m39029a("expand", "Expanded View does not allow expand");
        m39030a("expand");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: c */
    public final void mo38995c() {
        try {
            m39011o();
        } catch (JSONException e) {
            DtbLog.m38821c("Error:" + e.getMessage());
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: e */
    public final void mo38992e() {
        mo39003g();
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: g */
    public final void mo39003g() {
        DTBAdMRAIDBannerController m39056a;
        DTBAdActivity dTBAdActivity = (DTBAdActivity) DTBAdUtil.m38960a(this.f11723i);
        Intent intent = dTBAdActivity.getIntent();
        if (intent != null && (m39056a = DTBAdMRAIDBannerController.m39056a(intent.getIntExtra("cntrl_index", -1))) != null) {
            m39056a.mo39003g();
        }
        dTBAdActivity.m39059a();
    }

    /* renamed from: h */
    public final void m39002h() {
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDExpandedController$_L67EhajiEKAq0V7Boxr7nApdRY
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m39004a;
                m39004a = DTBAdMRAIDExpandedController.this.m39004a(view, motionEvent);
                return m39004a;
            }
        };
        m39008s();
        ViewGroup m38954b = DTBAdUtil.m38954b(this.f11723i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(DTBAdUtil.m38961a(50), DTBAdUtil.m38961a(50));
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = 0;
        m38954b.addView(this.f11718d, layoutParams);
        m39033a(onTouchListener);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: j */
    public final void mo38989j() {
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: p */
    protected final MraidStateType mo39001p() {
        return MraidStateType.EXPANDED;
    }
}
