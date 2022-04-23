package com.bytedance.sdk.openadsdk.core.b;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.h.d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/c.class */
public abstract class c implements View.OnClickListener, View.OnTouchListener {
    protected int r;
    protected int s;
    protected int t;
    protected int u;
    protected long v;
    protected long w;
    protected int x;
    protected int y;
    protected int z;

    protected abstract void a(View view, int i, int i2, int i3, int i4);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (d.a()) {
            a(view, this.r, this.s, this.t, this.u);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.r = (int) motionEvent.getRawX();
            this.s = (int) motionEvent.getRawY();
            this.v = System.currentTimeMillis();
            this.x = motionEvent.getToolType(0);
            this.y = motionEvent.getDeviceId();
            this.z = motionEvent.getSource();
            return false;
        } else if (actionMasked != 1) {
            return false;
        } else {
            this.t = (int) motionEvent.getRawX();
            this.u = (int) motionEvent.getRawY();
            this.w = System.currentTimeMillis();
            return false;
        }
    }
}
