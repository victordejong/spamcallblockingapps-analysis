package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.mopub.common.AdType;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView.class */
public class FullRewardExpressBackupView extends BackupView {
    private View k;
    private NativeExpressView l;
    private FrameLayout m;
    private c n;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.f9012a = context;
    }

    private void b() {
        this.f = ag.c(this.f9012a, this.l.getExpectExpressWidth());
        this.g = ag.c(this.f9012a, this.l.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(this.f, this.g);
        }
        layoutParams2.width = this.f;
        layoutParams2.height = this.g;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
        }
        setLayoutParams(layoutParams2);
        this.f9013b.l();
        c();
    }

    private void c() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_full_reward"), (ViewGroup) this, true);
        this.k = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container"));
        this.m = frameLayout;
        frameLayout.removeAllViews();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(int i, g gVar) {
        NativeExpressView nativeExpressView = this.l;
        if (nativeExpressView != null) {
            nativeExpressView.a(i, gVar);
        }
    }

    public void a(i iVar, NativeExpressView nativeExpressView, c cVar) {
        q.b("FullRewardExpressBackupView", "show backup view");
        setBackgroundColor(-1);
        this.f9013b = iVar;
        this.l = nativeExpressView;
        this.n = cVar;
        if (af.c(this.f9013b.S()) == 7) {
            this.e = AdType.REWARDED_VIDEO;
        } else {
            this.e = "fullscreen_interstitial_ad";
        }
        b();
        this.l.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public FrameLayout getVideoContainer() {
        return this.m;
    }
}
