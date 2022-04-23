package com.callapp.contacts.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ShadowBackGroundAnimationView.class */
public class ShadowBackGroundAnimationView extends View {

    /* renamed from: a  reason: collision with root package name */
    private View.OnClickListener f16618a;

    /* renamed from: b  reason: collision with root package name */
    private ValueAnimator f16619b;

    public ShadowBackGroundAnimationView(Context context) {
        this(context, null);
    }

    public ShadowBackGroundAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowBackGroundAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.ShadowBackGroundAnimationView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShadowBackGroundAnimationView.this.getVisibility() == 8) {
                    ShadowBackGroundAnimationView.this.a(true);
                } else {
                    ShadowBackGroundAnimationView.this.a(false);
                }
                if (ShadowBackGroundAnimationView.this.f16618a != null) {
                    ShadowBackGroundAnimationView.this.f16618a.onClick(view);
                }
            }
        });
    }

    public final void a(boolean z) {
        ValueAnimator valueAnimator = this.f16619b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z) {
            this.f16619b = CallappAnimationUtils.b(this, 250, 0);
        } else {
            this.f16619b = CallappAnimationUtils.a((View) this, 250, 0, 8);
        }
        ValueAnimator valueAnimator2 = this.f16619b;
        if (valueAnimator2 != null) {
            valueAnimator2.start();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f16618a = onClickListener;
    }
}
