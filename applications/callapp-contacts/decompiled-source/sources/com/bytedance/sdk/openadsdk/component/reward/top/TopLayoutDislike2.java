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
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2.class */
public class TopLayoutDislike2 extends FrameLayout implements a<TopLayoutDislike2> {

    /* renamed from: a  reason: collision with root package name */
    private View f8710a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f8711b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f8712c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8713d;
    private i e;
    private boolean f;
    private b g;
    private CharSequence h;
    private CharSequence i;

    public TopLayoutDislike2(Context context) {
        this(context, null);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = "";
        this.i = "";
    }

    private void d() {
        View view = this.f8710a;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.g != null) {
                        TopLayoutDislike2.this.g.c(view2);
                    }
                }
            });
        }
        ImageView imageView = this.f8711b;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TopLayoutDislike2 topLayoutDislike2 = TopLayoutDislike2.this;
                    topLayoutDislike2.f = !topLayoutDislike2.f;
                    TopLayoutDislike2.this.f8711b.setImageResource(TopLayoutDislike2.this.f ? x.d(TopLayoutDislike2.this.getContext(), "tt_mute") : x.d(TopLayoutDislike2.this.getContext(), "tt_unmute"));
                    if (TopLayoutDislike2.this.g != null) {
                        TopLayoutDislike2.this.g.b(view2);
                    }
                }
            });
        }
        TextView textView = this.f8712c;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.g != null) {
                        TopLayoutDislike2.this.g.a(view2);
                    }
                }
            });
        }
    }

    public TopLayoutDislike2 a(boolean z, i iVar) {
        this.f8713d = z;
        this.e = iVar;
        LayoutInflater.from(getContext()).inflate(x.f(getContext(), "tt_top_reward_dislike_2"), (ViewGroup) this, true);
        this.f8710a = findViewById(x.e(getContext(), "tt_top_dislike"));
        this.f8711b = (ImageView) findViewById(x.e(getContext(), "tt_top_mute"));
        TextView textView = (TextView) findViewById(x.e(getContext(), "tt_top_skip"));
        this.f8712c = textView;
        textView.setVisibility(0);
        this.f8712c.setText("");
        this.f8712c.setEnabled(false);
        this.f8712c.setClickable(false);
        d();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a() {
        TextView textView = this.f8712c;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a(CharSequence charSequence, CharSequence charSequence2) {
        CharSequence charSequence3;
        if (!TextUtils.isEmpty(charSequence)) {
            this.h = charSequence;
        }
        if (!TextUtils.isEmpty(charSequence2)) {
            this.i = charSequence2;
        }
        if (this.f8712c != null) {
            String str = this.h;
            if (!TextUtils.isEmpty(this.i)) {
                str = ((Object) charSequence3) + " | " + ((Object) this.i);
            }
            this.f8712c.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void b() {
        ImageView imageView = this.f8711b;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void c() {
        this.f8712c.setWidth(20);
        this.f8712c.setVisibility(4);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setListener(b bVar) {
        this.g = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowCountDown(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowDislike(boolean z) {
        View view = this.f8710a;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSkip(boolean z) {
        TextView textView = this.f8712c;
        if (textView != null) {
            if (!z) {
                textView.setText("");
            }
            if (this.f8712c.getVisibility() != 4) {
                this.f8712c.setVisibility(z ? 0 : 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSound(boolean z) {
        ImageView imageView = this.f8711b;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipEnable(boolean z) {
        TextView textView = this.f8712c;
        if (textView != null) {
            textView.setEnabled(z);
            this.f8712c.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSoundMute(boolean z) {
        this.f = z;
        this.f8711b.setImageResource(z ? x.d(getContext(), "tt_mute") : x.d(getContext(), "tt_unmute"));
    }
}
