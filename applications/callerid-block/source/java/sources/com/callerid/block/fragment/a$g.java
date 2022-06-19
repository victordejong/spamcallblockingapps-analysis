package com.callerid.block.fragment;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$g.class */
class a$g implements View.OnTouchListener {

    /* renamed from: b */
    final /* synthetic */ a f4370b;

    a$g(a aVar) {
        this.f4370b = aVar;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            a.X1(this.f4370b).setCursorVisible(true);
            return false;
        }
        return false;
    }
}
