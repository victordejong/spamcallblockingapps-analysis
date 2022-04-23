package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView.class */
public class VastWebView extends BaseWebView {

    /* renamed from: c  reason: collision with root package name */
    a f34333c;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView$a.class */
    interface a {
        void onVastWebViewClick();
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
    final class b implements View.OnTouchListener {

        /* renamed from: b  reason: collision with root package name */
        private boolean f34335b;

        b() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f34335b = true;
                return false;
            } else if (action != 1 || !this.f34335b) {
                return false;
            } else {
                this.f34335b = false;
                if (VastWebView.this.f34333c == null) {
                    return false;
                }
                VastWebView.this.f34333c.onVastWebViewClick();
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
        setOnTouchListener(new b());
        setId(View.generateViewId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static VastWebView a(Context context, VastResource vastResource) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResource);
        VastWebView vastWebView = new VastWebView(context);
        vastResource.initializeWebView(vastWebView);
        return vastWebView;
    }
}
