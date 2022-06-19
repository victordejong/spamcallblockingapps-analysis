package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView.class */
public class NativeDrawVideoTsView extends NativeVideoTsView implements View.OnClickListener {

    /* renamed from: o */
    private boolean f17192o = false;

    public NativeDrawVideoTsView(Context context, C4557i c4557i) {
        super(context, c4557i);
        setOnClickListener(this);
    }

    /* renamed from: e */
    private void m34395e() {
        C5443ag.m32228a((View) this.f17201e, 0);
        C5443ag.m32228a((View) this.f17202f, 0);
        C5443ag.m32228a((View) this.f17204h, 8);
    }

    /* renamed from: f */
    private void m34394f() {
        m34383h();
        if (this.f17201e != null) {
            if (this.f17201e.getVisibility() == 0) {
                return;
            }
            C4959e.m33434c().m33439a(this.f17197a.m35245B().m35044g(), this.f17202f);
        }
        m34395e();
    }

    /* renamed from: a */
    public void m34396a(Bitmap bitmap, int i) {
        C4570g.m35020b().m35027a(bitmap);
        this.f17207k = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    /* renamed from: c */
    public void mo34388c() {
        this.f17200d = false;
        this.f17206j = "draw_ad";
        C4600n.m34805h().m34864r(String.valueOf(C5438af.m32278d(this.f17197a.m35228S())));
        super.mo34388c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    /* renamed from: d */
    public void mo34386d() {
        if (this.f17192o) {
            super.mo34386d();
        }
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
            m34394f();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.f17203g == null || this.f17203g.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            m34394f();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.f17192o = z;
    }
}
