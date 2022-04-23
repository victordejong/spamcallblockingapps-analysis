package com.callerid.block.p038f;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.callerid.block.f.a$e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/a$e.class */
final class a$e implements View.OnTouchListener {
    a$e() {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            a.d(motionEvent.getX());
            a.f(motionEvent.getY());
            return true;
        } else if (action == 1) {
            a.k().x = (int) (a.g() - a.c());
            a.k().y = (int) (a.i() - a.e());
            try {
                a.l().updateViewLayout(view, a.k());
            } catch (Exception e) {
                e.printStackTrace();
            }
            a.f(0.0f);
            a.d(0.0f);
            return true;
        } else if (action != 2) {
            return true;
        } else {
            a.h(motionEvent.getRawX());
            a.j(motionEvent.getRawY());
            a.k().x = (int) (a.g() - a.c());
            a.k().y = (int) (a.i() - a.e());
            try {
                a.l().updateViewLayout(view, a.k());
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return true;
            }
        }
    }
}
