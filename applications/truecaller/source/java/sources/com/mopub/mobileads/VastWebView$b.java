package com.mopub.mobileads;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
public class VastWebView$b implements View.OnTouchListener {

    /* renamed from: a */
    public boolean f8944a;

    /* renamed from: b */
    public final /* synthetic */ VastWebView f8945b;

    public VastWebView$b(VastWebView vastWebView) {
        this.f8945b = vastWebView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f8944a = true;
            return false;
        } else if (action != 1 || !this.f8944a) {
            return false;
        } else {
            this.f8944a = false;
            VastWebView$a vastWebView$a = this.f8945b.e;
            if (vastWebView$a == null) {
                return false;
            }
            vastWebView$a.onVastWebViewClick();
            return false;
        }
    }
}
