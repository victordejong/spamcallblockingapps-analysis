package com.rey.material.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TextView.class */
public class TextView extends android.widget.TextView implements b$c {

    /* renamed from: b */
    private View$OnClickListenerC2847a f11932b;

    /* renamed from: c */
    protected int f11933c;

    /* renamed from: d */
    protected int f11934d = Integer.MIN_VALUE;

    /* renamed from: e */
    private AbstractC2846a f11935e;

    /* renamed from: com.rey.material.widget.TextView$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TextView$a.class */
    public interface AbstractC2846a {
        /* renamed from: a */
        void m1340a(View view, int i, int i2);
    }

    public TextView(Context context) {
        super(context);
        m1342c(context, null, 0, 0);
    }

    public TextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1342c(context, attributeSet, 0, 0);
    }

    public TextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1342c(context, attributeSet, i, 0);
    }

    /* renamed from: c */
    private void m1342c(Context context, AttributeSet attributeSet, int i, int i2) {
        C3124d.m76a(this, attributeSet, i, i2);
        m1343b(context, attributeSet, i, i2);
        this.f11933c = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public void m1344a(int i) {
        C3124d.m75b(this, i);
        m1343b(getContext(), null, 0, i);
    }

    /* renamed from: b */
    protected void m1343b(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11933c);
        if (this.f11934d != b) {
            this.f11934d = b;
            m1344a(b);
        }
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11932b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11932b == null) {
                        this.f11932b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11932b;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11933c != 0) {
            b.c().j(this);
            mo1341d(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11933c != 0) {
            b.c().m(this);
        }
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        AbstractC2846a aVar = this.f11935e;
        if (aVar != null) {
            aVar.m1340a(this, i, i2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return getRippleManager().m1336d(motionEvent) || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof View$OnTouchListenerC3116f) || (drawable instanceof View$OnTouchListenerC3116f)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((View$OnTouchListenerC3116f) background).m125r(drawable);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        View$OnClickListenerC2847a rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.m1335f(onClickListener);
        setOnClickListener(rippleManager);
    }

    public void setOnSelectionChangedListener(AbstractC2846a aVar) {
        this.f11935e = aVar;
    }
}
