package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.Networking;
import p081h.p430l.p433b.C10715o;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView.class */
public class VastWebView extends BaseWebView {
    @Nullable

    /* renamed from: c */
    public AbstractC3865a f8801c;

    /* renamed from: com.mopub.mobileads.VastWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView$a.class */
    public interface AbstractC3865a {
        void onVastWebViewClick();
    }

    /* renamed from: com.mopub.mobileads.VastWebView$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastWebView$b.class */
    public class View$OnTouchListenerC3866b implements View.OnTouchListener {

        /* renamed from: a */
        public boolean f8802a;

        public View$OnTouchListenerC3866b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f8802a = true;
                return false;
            } else if (action != 1 || !this.f8802a) {
                return false;
            } else {
                this.f8802a = false;
                AbstractC3865a aVar = VastWebView.this.f8801c;
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
        m30381c();
        getSettings().setJavaScriptEnabled(true);
        setBackgroundColor(0);
        setOnTouchListener(new View$OnTouchListenerC3866b());
        setId(View.generateViewId());
    }

    @NonNull
    /* renamed from: a */
    public static VastWebView m30385a(@NonNull Context context, @NonNull VastResourceTwo vastResourceTwo) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResourceTwo);
        VastWebView vastWebView = new VastWebView(context);
        vastResourceTwo.initializeWebView(vastWebView);
        return vastWebView;
    }

    @NonNull
    /* renamed from: a */
    public static VastWebView m30384a(@NonNull Context context, @NonNull C10715o oVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(oVar);
        VastWebView vastWebView = new VastWebView(context);
        oVar.initializeWebView(vastWebView);
        return vastWebView;
    }

    /* renamed from: a */
    public void m30383a(@NonNull AbstractC3865a aVar) {
        this.f8801c = aVar;
    }

    /* renamed from: a */
    public void m30382a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
    }

    /* renamed from: c */
    public final void m30381c() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }
}
