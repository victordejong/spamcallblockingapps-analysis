package com.bytedance.sdk.openadsdk.component.reward.top;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/top/TopLayout1.class */
public class TopLayout1 extends FrameLayout implements a<TopLayout1> {

    /* renamed from: a  reason: collision with root package name */
    private TextView f8706a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f8707b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f8708c;

    /* renamed from: d  reason: collision with root package name */
    private View f8709d;
    private boolean e;
    private boolean f;
    private b g;

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a() {
        TextView textView = this.f8708c;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a(CharSequence charSequence, CharSequence charSequence2) {
        if (this.f8706a != null && !TextUtils.isEmpty(charSequence)) {
            this.f8706a.setText(charSequence);
        }
        if (this.f8708c != null && !TextUtils.isEmpty(charSequence2)) {
            this.f8708c.setText(charSequence2);
            if (!this.e) {
                ViewGroup.LayoutParams layoutParams = this.f8708c.getLayoutParams();
                layoutParams.width = (int) (charSequence2.length() <= 2 ? ag.a(getContext(), 53.0f) : ag.a(getContext(), 96.0f));
                this.f8708c.setLayoutParams(layoutParams);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void b() {
        ImageView imageView = this.f8707b;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void c() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setListener(b bVar) {
        this.g = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowCountDown(boolean z) {
        TextView textView = this.f8706a;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowDislike(boolean z) {
        View view = this.f8709d;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSkip(boolean z) {
        TextView textView = this.f8708c;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSound(boolean z) {
        ImageView imageView = this.f8707b;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipEnable(boolean z) {
        TextView textView = this.f8708c;
        if (textView != null) {
            textView.setEnabled(z);
            this.f8708c.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSoundMute(boolean z) {
        this.f = z;
        this.f8707b.setImageResource(z ? x.d(getContext(), "tt_mute") : x.d(getContext(), "tt_unmute"));
    }
}
