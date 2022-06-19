package com.bytedance.sdk.openadsdk.component.reward.top;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/top/TopLayout1.class */
public class TopLayout1 extends FrameLayout implements AbstractC4450a<TopLayout1> {

    /* renamed from: a */
    private TextView f16217a;

    /* renamed from: b */
    private ImageView f16218b;

    /* renamed from: c */
    private TextView f16219c;

    /* renamed from: d */
    private View f16220d;

    /* renamed from: e */
    private boolean f16221e;

    /* renamed from: f */
    private boolean f16222f;

    /* renamed from: g */
    private AbstractC4451b f16223g;

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35550a() {
        TextView textView = this.f16219c;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35549a(CharSequence charSequence, CharSequence charSequence2) {
        if (this.f16217a != null && !TextUtils.isEmpty(charSequence)) {
            this.f16217a.setText(charSequence);
        }
        if (this.f16219c == null || TextUtils.isEmpty(charSequence2)) {
            return;
        }
        this.f16219c.setText(charSequence2);
        if (this.f16221e) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f16219c.getLayoutParams();
        layoutParams.width = (int) (charSequence2.length() <= 2 ? C5443ag.m32232a(getContext(), 53.0f) : C5443ag.m32232a(getContext(), 96.0f));
        this.f16219c.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: b */
    public void mo35548b() {
        ImageView imageView = this.f16218b;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: c */
    public void mo35547c() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setListener(AbstractC4451b abstractC4451b) {
        this.f16223g = abstractC4451b;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowCountDown(boolean z) {
        TextView textView = this.f16217a;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowDislike(boolean z) {
        View view = this.f16220d;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSkip(boolean z) {
        TextView textView = this.f16219c;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSound(boolean z) {
        ImageView imageView = this.f16218b;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSkipEnable(boolean z) {
        TextView textView = this.f16219c;
        if (textView != null) {
            textView.setEnabled(z);
            this.f16219c.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSoundMute(boolean z) {
        this.f16222f = z;
        this.f16218b.setImageResource(z ? C5486x.m32067d(getContext(), "tt_mute") : C5486x.m32067d(getContext(), "tt_unmute"));
    }
}
