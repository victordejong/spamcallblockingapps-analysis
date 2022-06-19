package com.bytedance.sdk.openadsdk.component.reward.top;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2.class */
public class TopLayoutDislike2 extends FrameLayout implements AbstractC4450a<TopLayoutDislike2> {

    /* renamed from: a */
    private View f16224a;

    /* renamed from: b */
    private ImageView f16225b;

    /* renamed from: c */
    private TextView f16226c;

    /* renamed from: d */
    private boolean f16227d;

    /* renamed from: e */
    private C4557i f16228e;

    /* renamed from: f */
    private boolean f16229f;

    /* renamed from: g */
    private AbstractC4451b f16230g;

    /* renamed from: h */
    private CharSequence f16231h;

    /* renamed from: i */
    private CharSequence f16232i;

    public TopLayoutDislike2(Context context) {
        this(context, null);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16231h = "";
        this.f16232i = "";
    }

    /* renamed from: d */
    private void m35553d() {
        View view = this.f16224a;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.f16230g != null) {
                        TopLayoutDislike2.this.f16230g.mo35544c(view2);
                    }
                }
            });
        }
        ImageView imageView = this.f16225b;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TopLayoutDislike2 topLayoutDislike2 = TopLayoutDislike2.this;
                    topLayoutDislike2.f16229f = !topLayoutDislike2.f16229f;
                    TopLayoutDislike2.this.f16225b.setImageResource(TopLayoutDislike2.this.f16229f ? C5486x.m32067d(TopLayoutDislike2.this.getContext(), "tt_mute") : C5486x.m32067d(TopLayoutDislike2.this.getContext(), "tt_unmute"));
                    if (TopLayoutDislike2.this.f16230g != null) {
                        TopLayoutDislike2.this.f16230g.mo35545b(view2);
                    }
                }
            });
        }
        TextView textView = this.f16226c;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.f16230g != null) {
                        TopLayoutDislike2.this.f16230g.mo35546a(view2);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public TopLayoutDislike2 m35556a(boolean z, C4557i c4557i) {
        this.f16227d = z;
        this.f16228e = c4557i;
        LayoutInflater.from(getContext()).inflate(C5486x.m32065f(getContext(), "tt_top_reward_dislike_2"), (ViewGroup) this, true);
        this.f16224a = findViewById(C5486x.m32066e(getContext(), "tt_top_dislike"));
        this.f16225b = (ImageView) findViewById(C5486x.m32066e(getContext(), "tt_top_mute"));
        TextView textView = (TextView) findViewById(C5486x.m32066e(getContext(), "tt_top_skip"));
        this.f16226c = textView;
        textView.setVisibility(0);
        this.f16226c.setText("");
        this.f16226c.setEnabled(false);
        this.f16226c.setClickable(false);
        m35553d();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35550a() {
        TextView textView = this.f16226c;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35549a(CharSequence charSequence, CharSequence charSequence2) {
        CharSequence charSequence3;
        if (!TextUtils.isEmpty(charSequence)) {
            this.f16231h = charSequence;
        }
        if (!TextUtils.isEmpty(charSequence2)) {
            this.f16232i = charSequence2;
        }
        if (this.f16226c != null) {
            String str = this.f16231h;
            if (!TextUtils.isEmpty(this.f16232i)) {
                str = ((Object) charSequence3) + " | " + ((Object) this.f16232i);
            }
            this.f16226c.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: b */
    public void mo35548b() {
        ImageView imageView = this.f16225b;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: c */
    public void mo35547c() {
        this.f16226c.setWidth(20);
        this.f16226c.setVisibility(4);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setListener(AbstractC4451b abstractC4451b) {
        this.f16230g = abstractC4451b;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowCountDown(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowDislike(boolean z) {
        View view = this.f16224a;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSkip(boolean z) {
        TextView textView = this.f16226c;
        if (textView != null) {
            if (!z) {
                textView.setText("");
            }
            if (this.f16226c.getVisibility() == 4) {
                return;
            }
            this.f16226c.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSound(boolean z) {
        ImageView imageView = this.f16225b;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSkipEnable(boolean z) {
        TextView textView = this.f16226c;
        if (textView != null) {
            textView.setEnabled(z);
            this.f16226c.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSoundMute(boolean z) {
        this.f16229f = z;
        this.f16225b.setImageResource(z ? C5486x.m32067d(getContext(), "tt_mute") : C5486x.m32067d(getContext(), "tt_unmute"));
    }
}
