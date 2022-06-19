package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: com.bytedance.sdk.openadsdk.utils.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/l.class */
public class C5470l extends TouchDelegate {

    /* renamed from: a */
    private View f19014a;

    /* renamed from: b */
    private Rect f19015b;

    /* renamed from: c */
    private Rect f19016c;

    /* renamed from: d */
    private boolean f19017d;

    /* renamed from: e */
    private int f19018e;

    public C5470l(Rect rect, View view) {
        super(rect, view);
        this.f19015b = rect;
        this.f19018e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.f19016c = rect2;
        int i = this.f19018e;
        rect2.inset(-i, -i);
        this.f19014a = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z2 = this.f19017d;
                if (z2) {
                    z = this.f19016c.contains(x, y);
                }
            } else {
                if (action == 3) {
                    z2 = this.f19017d;
                    this.f19017d = false;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else if (this.f19015b.contains(x, y)) {
            this.f19017d = true;
            z = true;
        } else {
            this.f19017d = false;
            z = true;
            z2 = false;
        }
        boolean z3 = false;
        if (z2) {
            View view = this.f19014a;
            if (z) {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            } else {
                float f = -(this.f19018e * 2);
                motionEvent.setLocation(f, f);
            }
            z3 = false;
            if (view.getVisibility() == 0) {
                z3 = view.dispatchTouchEvent(motionEvent);
            }
        }
        return z3;
    }
}
