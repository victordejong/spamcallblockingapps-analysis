package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/l.class */
public class l extends TouchDelegate {

    /* renamed from: a  reason: collision with root package name */
    private View f10304a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f10305b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f10306c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10307d;
    private int e;

    public l(Rect rect, View view) {
        super(rect, view);
        this.f10305b = rect;
        this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.f10306c = rect2;
        int i = this.e;
        rect2.inset(-i, -i);
        this.f10304a = view;
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
                z2 = this.f10307d;
                if (z2) {
                    z = this.f10306c.contains(x, y);
                }
            } else {
                if (action == 3) {
                    z2 = this.f10307d;
                    this.f10307d = false;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else if (this.f10305b.contains(x, y)) {
            this.f10307d = true;
            z = true;
        } else {
            this.f10307d = false;
            z = true;
            z2 = false;
        }
        boolean z3 = false;
        if (z2) {
            View view = this.f10304a;
            if (z) {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            } else {
                float f = -(this.e * 2);
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
