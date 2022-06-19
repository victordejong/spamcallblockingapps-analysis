package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView.class */
public class VastWebView extends BaseWebView {

    /* renamed from: c */
    AbstractC16829a f59606c;

    /* renamed from: com.mopub.mobileads.VastWebView$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView$a.class */
    interface AbstractC16829a {
        void onVastWebViewClick();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.VastWebView$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
    public final class View$OnTouchListenerC16830b implements View.OnTouchListener {

        /* renamed from: b */
        private boolean f59608b;

        View$OnTouchListenerC16830b() {
            VastWebView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f59608b = true;
                return false;
            } else if (action != 1 || !this.f59608b) {
                return false;
            } else {
                this.f59608b = false;
                if (VastWebView.this.f59606c == null) {
                    return false;
                }
                VastWebView.this.f59606c.onVastWebViewClick();
                return false;
            }
        }
    }

    VastWebView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
        getSettings().setJavaScriptEnabled(true);
        setBackgroundColor(0);
        setOnTouchListener(new View$OnTouchListenerC16830b());
        setId(View.generateViewId());
    }

    /* renamed from: a */
    public static VastWebView m6386a(Context context, VastResource vastResource) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResource);
        VastWebView vastWebView = new VastWebView(context);
        vastResource.initializeWebView(vastWebView);
        return vastWebView;
    }
}
