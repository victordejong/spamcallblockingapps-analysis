package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.FullRewardExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4560k;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView.class */
public class FullRewardExpressView extends NativeExpressView implements AbstractC4619g {

    /* renamed from: a */
    AbstractC4619g f16237a;

    /* renamed from: b */
    FullRewardExpressBackupView f16238b;

    public FullRewardExpressView(Context context, C4557i c4557i, AdSlot adSlot, String str) {
        super(context, c4557i, adSlot, str);
    }

    /* renamed from: b */
    private void m35541b(final C4560k c4560k) {
        if (c4560k == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m35539c(c4560k);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    FullRewardExpressView.this.m35539c(c4560k);
                }
            });
        }
    }

    /* renamed from: c */
    private void m35540c() {
        setBackupListener(new AbstractC4615c() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c
            /* renamed from: a */
            public boolean mo34693a(NativeExpressView nativeExpressView, int i) {
                nativeExpressView.m34763m();
                FullRewardExpressView.this.f16238b = new FullRewardExpressBackupView(nativeExpressView.getContext());
                FullRewardExpressView.this.f16238b.m34792a(FullRewardExpressView.this.f16884l, nativeExpressView, null);
                return true;
            }
        });
    }

    /* renamed from: c */
    public void m35539c(C4560k c4560k) {
        if (c4560k == null) {
            return;
        }
        double m35109d = c4560k.m35109d();
        double m35107e = c4560k.m35107e();
        double m35105f = c4560k.m35105f();
        double m35103g = c4560k.m35103g();
        int m32232a = (int) C5443ag.m32232a(this.f16879g, (float) m35109d);
        int m32232a2 = (int) C5443ag.m32232a(this.f16879g, (float) m35107e);
        int m32232a3 = (int) C5443ag.m32232a(this.f16879g, (float) m35105f);
        int m32232a4 = (int) C5443ag.m32232a(this.f16879g, (float) m35103g);
        C5478q.m32112b("ExpressView", "videoWidth:".concat(String.valueOf(m35105f)));
        C5478q.m32112b("ExpressView", "videoHeight:".concat(String.valueOf(m35103g)));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f16886n.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new FrameLayout.LayoutParams(m32232a3, m32232a4);
        }
        layoutParams2.width = m32232a3;
        layoutParams2.height = m32232a4;
        layoutParams2.topMargin = m32232a2;
        layoutParams2.leftMargin = m32232a;
        this.f16886n.setLayoutParams(layoutParams2);
        this.f16886n.removeAllViews();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: N */
    public void mo34724N() {
        C5478q.m32112b("FullRewardExpressView", "onSkipVideo");
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            abstractC4619g.mo34724N();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: O */
    public long mo34723O() {
        C5478q.m32112b("FullRewardExpressView", "onGetCurrentPlayTime");
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            return abstractC4619g.mo34723O();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: P */
    public int mo34722P() {
        C5478q.m32112b("FullRewardExpressView", "onGetVideoState");
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            return abstractC4619g.mo34722P();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: Q */
    public void mo34721Q() {
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            abstractC4619g.mo34721Q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    /* renamed from: a */
    public void mo34782a() {
        this.f16888p = true;
        this.f16886n = new FrameLayout(this.f16879g);
        addView(this.f16886n, new FrameLayout.LayoutParams(-1, -1));
        super.mo34782a();
        getWebView().setBackgroundColor(0);
        m35540c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4628j
    /* renamed from: a */
    public void mo34705a(int i, C4553g c4553g) {
        if (i == -1 || c4553g == null || i != 3) {
            super.mo34705a(i, c4553g);
        } else {
            mo34721Q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4628j
    /* renamed from: a */
    public void mo34704a(C4560k c4560k) {
        if (c4560k != null && c4560k.m35119a()) {
            m35541b(c4560k);
        }
        super.mo34704a(c4560k);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    /* renamed from: b */
    public void mo34775b() {
        super.mo34775b();
        this.f16881i.m34157a((AbstractC4619g) this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: c */
    public void mo34720c(int i) {
        C5478q.m32112b("FullRewardExpressView", "onChangeVideoState,stateType:".concat(String.valueOf(i)));
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            abstractC4619g.mo34720c(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: f */
    public void mo34719f(boolean z) {
        C5478q.m32112b("FullRewardExpressView", "onMuteVideo,mute:".concat(String.valueOf(z)));
        AbstractC4619g abstractC4619g = this.f16237a;
        if (abstractC4619g != null) {
            abstractC4619g.mo34719f(z);
        }
    }

    public FrameLayout getVideoFrameLayout() {
        return m34762n() ? this.f16238b.getVideoContainer() : this.f16886n;
    }

    public void setExpressVideoListenerProxy(AbstractC4619g abstractC4619g) {
        this.f16237a = abstractC4619g;
    }
}
