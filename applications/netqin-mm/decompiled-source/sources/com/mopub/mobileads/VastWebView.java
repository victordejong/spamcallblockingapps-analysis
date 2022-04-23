package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.android.volley.toolbox.JsonRequest;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.network.Networking;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView.class */
public class VastWebView extends BaseWebView {

    /* renamed from: c */
    public AbstractC8835a f34412c;

    /* renamed from: com.mopub.mobileads.VastWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView$a.class */
    public interface AbstractC8835a {
        void onVastWebViewClick();
    }

    /* renamed from: com.mopub.mobileads.VastWebView$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
    public class View$OnTouchListenerC8836b implements View.OnTouchListener {

        /* renamed from: a */
        public boolean f34413a;

        public View$OnTouchListenerC8836b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f34413a = true;
                return false;
            } else if (action != 1 || !this.f34413a) {
                return false;
            } else {
                this.f34413a = false;
                AbstractC8835a aVar = VastWebView.this.f34412c;
                if (aVar == null) {
                    return false;
                }
                aVar.onVastWebViewClick();
                return false;
            }
        }
    }

    public VastWebView(Context context) {
        super(context);
        m4189c();
        getSettings().setJavaScriptEnabled(true);
        setBackgroundColor(0);
        setOnTouchListener(new View$OnTouchListenerC8836b());
        setId(View.generateViewId());
    }

    /* renamed from: a */
    public static VastWebView m4192a(Context context, VastResource vastResource) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResource);
        VastWebView vastWebView = new VastWebView(context);
        vastResource.initializeWebView(vastWebView);
        return vastWebView;
    }

    /* renamed from: a */
    public static VastWebView m4191a(Context context, VastResourceTwo vastResourceTwo) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResourceTwo);
        VastWebView vastWebView = new VastWebView(context);
        vastResourceTwo.initializeWebView(vastWebView);
        return vastWebView;
    }

    /* renamed from: a */
    public void m4190a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
    }

    /* renamed from: c */
    public final void m4189c() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @Deprecated
    @VisibleForTesting
    public AbstractC8835a getVastWebViewClickListener() {
        return this.f34412c;
    }

    public void setVastWebViewClickListener(AbstractC8835a aVar) {
        this.f34412c = aVar;
    }
}
