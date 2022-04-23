package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView.class */
public class NativeDrawVideoTsView extends NativeVideoTsView implements View.OnClickListener {
    private boolean o = false;

    public NativeDrawVideoTsView(Context context, i iVar) {
        super(context, iVar);
        setOnClickListener(this);
    }

    private void e() {
        ag.a((View) this.e, 0);
        ag.a((View) this.f, 0);
        ag.a((View) this.h, 8);
    }

    private void f() {
        h();
        if (this.e != null) {
            if (this.e.getVisibility() != 0) {
                e.c().a(this.f9212a.B().g(), this.f);
            } else {
                return;
            }
        }
        e();
    }

    public void a(Bitmap bitmap, int i) {
        g.b().a(bitmap);
        this.k = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void c() {
        this.f9215d = false;
        this.j = "draw_ad";
        n.h().r(String.valueOf(af.d(this.f9212a.S())));
        super.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void d() {
        if (this.o) {
            super.d();
        }
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
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.g == null || this.g.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            f();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.o = z;
    }
}
