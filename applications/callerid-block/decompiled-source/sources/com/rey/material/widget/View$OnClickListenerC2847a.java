package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.callerid.block.R$styleable;
import p092e.p107g.p108a.p109a.C3120g;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3124d;
/* renamed from: com.rey.material.widget.a */
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/a.class */
public final class View$OnClickListenerC2847a implements View.OnClickListener, Runnable {

    /* renamed from: b */
    private View.OnClickListener f11936b;

    /* renamed from: c */
    private View f11937c;

    /* renamed from: d */
    private boolean f11938d = false;

    /* renamed from: a */
    public static void m1339a(View view) {
        Drawable background = view.getBackground();
        if (background instanceof View$OnTouchListenerC3116f) {
            ((View$OnTouchListenerC3116f) background).m132d();
        } else if (background instanceof C3120g) {
            ((C3120g) background).m96a();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m1339a(viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: b */
    private Drawable m1338b(View view) {
        Drawable background = view.getBackground();
        if (background == null) {
            return null;
        }
        Drawable drawable = background;
        if (background instanceof View$OnTouchListenerC3116f) {
            drawable = ((View$OnTouchListenerC3116f) background).m129i();
        }
        return drawable;
    }

    /* renamed from: c */
    public void m1337c(View view, Context context, AttributeSet attributeSet, int i, int i2) {
        if (!view.isInEditMode()) {
            this.f11937c = view;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RippleView, i, i2);
            int resourceId = obtainStyledAttributes.getResourceId(1, 0);
            View$OnTouchListenerC3116f fVar = null;
            if (resourceId != 0) {
                View$OnTouchListenerC3116f.C3118b bVar = new View$OnTouchListenerC3116f.C3118b(context, resourceId);
                bVar.m116c(m1338b(this.f11937c));
                fVar = bVar.m112g();
            } else if (obtainStyledAttributes.getBoolean(0, false)) {
                View$OnTouchListenerC3116f.C3118b bVar2 = new View$OnTouchListenerC3116f.C3118b(context, attributeSet, i, i2);
                bVar2.m116c(m1338b(this.f11937c));
                fVar = bVar2.m112g();
            }
            obtainStyledAttributes.recycle();
            if (fVar != null) {
                C3124d.m69h(this.f11937c, fVar);
            }
        }
    }

    /* renamed from: d */
    public boolean m1336d(MotionEvent motionEvent) {
        Drawable background = this.f11937c.getBackground();
        return (background instanceof View$OnTouchListenerC3116f) && ((View$OnTouchListenerC3116f) background).onTouch(this.f11937c, motionEvent);
    }

    /* renamed from: f */
    public void m1335f(View.OnClickListener onClickListener) {
        this.f11936b = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Drawable background = this.f11937c.getBackground();
        long l = background instanceof View$OnTouchListenerC3116f ? ((View$OnTouchListenerC3116f) background).m128l() : background instanceof C3120g ? ((C3120g) background).m93d() : 0L;
        if (l <= 0 || this.f11937c.getHandler() == null || this.f11938d) {
            run();
            return;
        }
        this.f11938d = true;
        this.f11937c.getHandler().postDelayed(this, l);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f11938d = false;
        View.OnClickListener onClickListener = this.f11936b;
        if (onClickListener != null) {
            onClickListener.onClick(this.f11937c);
        }
    }
}
