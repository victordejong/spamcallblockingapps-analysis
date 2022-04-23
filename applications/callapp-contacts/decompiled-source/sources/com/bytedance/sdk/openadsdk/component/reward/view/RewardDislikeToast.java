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
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast.class */
public class RewardDislikeToast extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private Handler f8731a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f8732b;

    public RewardDislikeToast(Context context) {
        this(context, null);
    }

    public RewardDislikeToast(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RewardDislikeToast(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8731a = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        a(context);
    }

    private void a(Context context) {
        TextView textView = new TextView(context);
        this.f8732b = textView;
        textView.setClickable(false);
        this.f8732b.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int a2 = (int) ag.a(n.a(), 20.0f);
        int a3 = (int) ag.a(n.a(), 12.0f);
        this.f8732b.setPadding(a2, a3, a2, a3);
        this.f8732b.setLayoutParams(layoutParams);
        this.f8732b.setTextColor(-1);
        this.f8732b.setTextSize(16.0f);
        this.f8732b.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(ag.a(n.a(), 6.0f));
        this.f8732b.setBackgroundDrawable(gradientDrawable);
        addView(this.f8732b);
    }

    public void a() {
        setVisibility(8);
        this.f8731a.removeCallbacksAndMessages(null);
    }

    public void a(final String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f8731a.removeCallbacksAndMessages(null);
            this.f8731a.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeToast.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RewardDislikeToast.this.f8732b != null) {
                        RewardDislikeToast.this.f8732b.setText(String.valueOf(str));
                    }
                    RewardDislikeToast.this.setVisibility(0);
                }
            });
            this.f8731a.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeToast.2
                @Override // java.lang.Runnable
                public void run() {
                    RewardDislikeToast.this.setVisibility(8);
                }
            }, 2000L);
        }
    }

    public void b() {
        setVisibility(8);
        this.f8731a.removeCallbacksAndMessages(null);
    }
}
