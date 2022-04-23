package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.h;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView.class */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {
    private boolean o;

    public ExpressVideoView(Context context, i iVar, String str) {
        super(context, iVar, false, str, false, false);
        this.o = false;
        if ("draw_ad".equals(str)) {
            this.o = true;
        }
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void k() {
        ag.a((View) this.e, 0);
        ag.a((View) this.f, 0);
        ag.a((View) this.h, 8);
    }

    private void l() {
        h();
        if (this.e != null) {
            if (this.e.getVisibility() != 0) {
                e.c().a(this.f9212a.B().g(), this.f);
            } else {
                return;
            }
        }
        k();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void a(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void c() {
        this.f9215d = false;
        int d2 = af.d(this.f9212a.S());
        if ("banner_ad".equalsIgnoreCase(this.j)) {
            n.h().r(String.valueOf(d2));
        }
        super.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void d() {
        if (this.o) {
            super.d();
        }
    }

    public void e() {
        if (this.h != null) {
            ag.a((View) this.h, 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        h();
        ag.a((View) this.e, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.g != null && this.g.getVisibility() == 0) {
            ag.f(this.e);
        }
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (this.g == null || this.g.getVisibility() != 0) {
            super.onWindowFocusChanged(z);
        } else {
            l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.g == null || this.g.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            l();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.o = z;
    }

    public void setShouldCheckNetChange(boolean z) {
        if (this.f9213b != null) {
            this.f9213b.f(z);
        }
    }

    public void setShowAdInteractionView(boolean z) {
        h v;
        if (this.f9213b != null && (v = this.f9213b.v()) != null) {
            v.d(z);
        }
    }
}
