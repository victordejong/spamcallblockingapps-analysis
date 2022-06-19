package com.callapp.contacts.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ShadowBackGroundAnimationView.class */
public class ShadowBackGroundAnimationView extends View {

    /* renamed from: a */
    private View.OnClickListener f28911a;

    /* renamed from: b */
    private ValueAnimator f28912b;

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
                    ShadowBackGroundAnimationView.this.m26623a(true);
                } else {
                    ShadowBackGroundAnimationView.this.m26623a(false);
                }
                if (ShadowBackGroundAnimationView.this.f28911a != null) {
                    ShadowBackGroundAnimationView.this.f28911a.onClick(view);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m26623a(boolean z) {
        ValueAnimator valueAnimator = this.f28912b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z) {
            this.f28912b = CallappAnimationUtils.m27173b(this, 250, 0);
        } else {
            this.f28912b = CallappAnimationUtils.m27183a((View) this, 250, 0, 8);
        }
        ValueAnimator valueAnimator2 = this.f28912b;
        if (valueAnimator2 != null) {
            valueAnimator2.start();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f28911a = onClickListener;
    }
}
