package com.bytedance.sdk.openadsdk.component.reward.top;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout.class */
public class TopProxyLayout extends View implements AbstractC4450a<TopProxyLayout> {

    /* renamed from: a */
    private AbstractC4450a f16236a;

    public TopProxyLayout(Context context) {
        this(context, null);
    }

    public TopProxyLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopProxyLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    private void m35552a(View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    /* renamed from: a */
    public TopProxyLayout m35551a(boolean z, C4557i c4557i) {
        TopLayoutDislike2 m35556a = new TopLayoutDislike2(getContext()).m35556a(z, c4557i);
        if (!(m35556a instanceof AbstractC4450a)) {
            C5478q.m32106e("TopProxyLayout", "view not implements ITopLayout interface");
            return this;
        }
        this.f16236a = m35556a;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            m35552a(m35556a, (ViewGroup) parent);
        }
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35550a() {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.mo35550a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: a */
    public void mo35549a(CharSequence charSequence, CharSequence charSequence2) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.mo35549a(charSequence, charSequence2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: b */
    public void mo35548b() {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.mo35548b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    /* renamed from: c */
    public void mo35547c() {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.mo35547c();
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setListener(AbstractC4451b abstractC4451b) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setListener(abstractC4451b);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowCountDown(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setShowCountDown(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowDislike(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setShowDislike(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSkip(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setShowSkip(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setShowSound(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setShowSound(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSkipEnable(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setSkipEnable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4450a
    public void setSoundMute(boolean z) {
        AbstractC4450a abstractC4450a = this.f16236a;
        if (abstractC4450a != null) {
            abstractC4450a.setSoundMute(z);
        }
    }
}
