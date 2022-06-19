package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.network.Networking;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastWebView.class */
public class VastWebView extends BaseWebView {

    /* renamed from: f */
    public AbstractC1114a f4960f;

    /* renamed from: com.mopub.mobileads.VastWebView$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastWebView$a.class */
    public interface AbstractC1114a {
        void onVastWebViewClick();
    }

    /* renamed from: com.mopub.mobileads.VastWebView$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
    public class View$OnTouchListenerC1115b implements View.OnTouchListener {

        /* renamed from: a */
        public boolean f4961a;

        public View$OnTouchListenerC1115b() {
            VastWebView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f4961a = true;
                return false;
            } else if (action != 1 || !this.f4961a) {
                return false;
            } else {
                this.f4961a = false;
                AbstractC1114a abstractC1114a = VastWebView.this.f4960f;
                if (abstractC1114a == null) {
                    return false;
                }
                abstractC1114a.onVastWebViewClick();
                return false;
            }
        }
    }

    public VastWebView(Context context) {
        super(context);
        m3536g();
        getSettings().setJavaScriptEnabled(true);
        setBackgroundColor(0);
        setOnTouchListener(new View$OnTouchListenerC1115b());
        setId(View.generateViewId());
    }

    /* renamed from: f */
    public static VastWebView m3537f(Context context, VastResource vastResource) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResource);
        VastWebView vastWebView = new VastWebView(context);
        vastResource.initializeWebView(vastWebView);
        return vastWebView;
    }

    /* renamed from: g */
    public final void m3536g() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @Deprecated
    @VisibleForTesting
    public AbstractC1114a getVastWebViewClickListener() {
        return this.f4960f;
    }

    /* renamed from: h */
    public void m3535h(String str) {
        loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, "text/html", "utf-8", null);
    }

    public void setVastWebViewClickListener(AbstractC1114a abstractC1114a) {
        this.f4960f = abstractC1114a;
    }
}
