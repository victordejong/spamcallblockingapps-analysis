package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.mopub.common.AdType;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView.class */
public class FullRewardExpressBackupView extends BackupView {

    /* renamed from: k */
    private View f16849k;

    /* renamed from: l */
    private NativeExpressView f16850l;

    /* renamed from: m */
    private FrameLayout f16851m;

    /* renamed from: n */
    private AbstractC3234c f16852n;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.f16836a = context;
    }

    /* renamed from: b */
    private void m34791b() {
        this.f16841f = C5443ag.m32217c(this.f16836a, this.f16850l.getExpectExpressWidth());
        this.f16842g = C5443ag.m32217c(this.f16836a, this.f16850l.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(this.f16841f, this.f16842g);
        }
        layoutParams2.width = this.f16841f;
        layoutParams2.height = this.f16842g;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
        }
        setLayoutParams(layoutParams2);
        this.f16837b.m35157l();
        m34790c();
    }

    /* renamed from: c */
    private void m34790c() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_full_reward"), (ViewGroup) this, true);
        this.f16849k = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container"));
        this.f16851m = frameLayout;
        frameLayout.removeAllViews();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    /* renamed from: a */
    protected void mo34718a(int i, C4553g c4553g) {
        NativeExpressView nativeExpressView = this.f16850l;
        if (nativeExpressView != null) {
            nativeExpressView.mo34705a(i, c4553g);
        }
    }

    /* renamed from: a */
    public void m34792a(C4557i c4557i, NativeExpressView nativeExpressView, AbstractC3234c abstractC3234c) {
        C5478q.m32112b("FullRewardExpressBackupView", "show backup view");
        setBackgroundColor(-1);
        this.f16837b = c4557i;
        this.f16850l = nativeExpressView;
        this.f16852n = abstractC3234c;
        if (C5438af.m32284c(this.f16837b.m35228S()) == 7) {
            this.f16840e = AdType.REWARDED_VIDEO;
        } else {
            this.f16840e = "fullscreen_interstitial_ad";
        }
        m34791b();
        this.f16850l.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public FrameLayout getVideoContainer() {
        return this.f16851m;
    }
}
