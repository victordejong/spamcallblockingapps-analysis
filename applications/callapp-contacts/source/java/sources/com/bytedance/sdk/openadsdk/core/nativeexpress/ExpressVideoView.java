package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView.class */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {

    /* renamed from: o */
    private boolean f16848o;

    public ExpressVideoView(Context context, C4557i c4557i, String str) {
        super(context, c4557i, false, str, false, false);
        this.f16848o = false;
        if ("draw_ad".equals(str)) {
            this.f16848o = true;
        }
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    /* renamed from: k */
    private void m34794k() {
        C5443ag.m32228a((View) this.f17201e, 0);
        C5443ag.m32228a((View) this.f17202f, 0);
        C5443ag.m32228a((View) this.f17204h, 8);
    }

    /* renamed from: l */
    private void m34793l() {
        m34383h();
        if (this.f17201e != null) {
            if (this.f17201e.getVisibility() == 0) {
                return;
            }
            C4959e.m33434c().m33439a(this.f17197a.m35245B().m35044g(), this.f17202f);
        }
        m34794k();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    /* renamed from: a */
    public void mo34390a(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    /* renamed from: c */
    public void mo34388c() {
        this.f17200d = false;
        int m32278d = C5438af.m32278d(this.f17197a.m35228S());
        if ("banner_ad".equalsIgnoreCase(this.f17206j)) {
            C4600n.m34805h().m34864r(String.valueOf(m32278d));
        }
        super.mo34388c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    /* renamed from: d */
    public void mo34386d() {
        if (this.f16848o) {
            super.mo34386d();
        }
    }

    /* renamed from: e */
    public void m34796e() {
        if (this.f17204h != null) {
            C5443ag.m32228a((View) this.f17204h, 8);
        }
    }

    /* renamed from: f */
    public void m34795f() {
        m34383h();
        C5443ag.m32228a((View) this.f17201e, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f17203g != null && this.f17203g.getVisibility() == 0) {
            C5443ag.m32210f(this.f17201e);
        }
        mo34386d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (this.f17203g == null || this.f17203g.getVisibility() != 0) {
            super.onWindowFocusChanged(z);
        } else {
            m34793l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.f17203g == null || this.f17203g.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            m34793l();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.f16848o = z;
    }

    public void setShouldCheckNetChange(boolean z) {
        if (this.f17198b != null) {
            this.f17198b.mo34271f(z);
        }
    }

    public void setShowAdInteractionView(boolean z) {
        C4743h mo34248v;
        if (this.f17198b == null || (mo34248v = this.f17198b.mo34248v()) == null) {
            return;
        }
        mo34248v.m34202d(z);
    }
}
