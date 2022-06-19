package com.bytedance.sdk.openadsdk.core.p151b;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
/* renamed from: com.bytedance.sdk.openadsdk.core.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/c.class */
public abstract class AbstractView$OnClickListenerC4497c implements View.OnClickListener, View.OnTouchListener {

    /* renamed from: r */
    protected int f16349r;

    /* renamed from: s */
    protected int f16350s;

    /* renamed from: t */
    protected int f16351t;

    /* renamed from: u */
    protected int f16352u;

    /* renamed from: v */
    protected long f16353v;

    /* renamed from: w */
    protected long f16354w;

    /* renamed from: x */
    protected int f16355x;

    /* renamed from: y */
    protected int f16356y;

    /* renamed from: z */
    protected int f16357z;

    /* renamed from: a */
    protected abstract void mo35468a(View view, int i, int i2, int i3, int i4);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C4587d.m34919a()) {
            return;
        }
        mo35468a(view, this.f16349r, this.f16350s, this.f16351t, this.f16352u);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                return false;
            }
            this.f16351t = (int) motionEvent.getRawX();
            this.f16352u = (int) motionEvent.getRawY();
            this.f16354w = System.currentTimeMillis();
            return false;
        }
        this.f16349r = (int) motionEvent.getRawX();
        this.f16350s = (int) motionEvent.getRawY();
        this.f16353v = System.currentTimeMillis();
        this.f16355x = motionEvent.getToolType(0);
        this.f16356y = motionEvent.getDeviceId();
        this.f16357z = motionEvent.getSource();
        return false;
    }
}
