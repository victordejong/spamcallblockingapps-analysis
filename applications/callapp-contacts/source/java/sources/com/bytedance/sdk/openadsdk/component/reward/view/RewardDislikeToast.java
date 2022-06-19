package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast.class */
public class RewardDislikeToast extends FrameLayout {

    /* renamed from: a */
    private Handler f16256a;

    /* renamed from: b */
    private TextView f16257b;

    public RewardDislikeToast(Context context) {
        this(context, null);
    }

    public RewardDislikeToast(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RewardDislikeToast(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16256a = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        m35522a(context);
    }

    /* renamed from: a */
    private void m35522a(Context context) {
        TextView textView = new TextView(context);
        this.f16257b = textView;
        textView.setClickable(false);
        this.f16257b.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int m32232a = (int) C5443ag.m32232a(C4600n.m34815a(), 20.0f);
        int m32232a2 = (int) C5443ag.m32232a(C4600n.m34815a(), 12.0f);
        this.f16257b.setPadding(m32232a, m32232a2, m32232a, m32232a2);
        this.f16257b.setLayoutParams(layoutParams);
        this.f16257b.setTextColor(-1);
        this.f16257b.setTextSize(16.0f);
        this.f16257b.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(C5443ag.m32232a(C4600n.m34815a(), 6.0f));
        this.f16257b.setBackgroundDrawable(gradientDrawable);
        addView(this.f16257b);
    }

    /* renamed from: a */
    public void m35523a() {
        setVisibility(8);
        this.f16256a.removeCallbacksAndMessages(null);
    }

    /* renamed from: a */
    public void m35520a(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f16256a.removeCallbacksAndMessages(null);
        this.f16256a.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (RewardDislikeToast.this.f16257b != null) {
                    RewardDislikeToast.this.f16257b.setText(String.valueOf(str));
                }
                RewardDislikeToast.this.setVisibility(0);
            }
        });
        this.f16256a.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                RewardDislikeToast.this.setVisibility(8);
            }
        }, 2000L);
    }

    /* renamed from: b */
    public void m35519b() {
        setVisibility(8);
        this.f16256a.removeCallbacksAndMessages(null);
    }
}
