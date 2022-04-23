package com.callapp.contacts.widget;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SingleAndMultiOnTouchListener.class */
public abstract class SingleAndMultiOnTouchListener implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f16634a = false;

    public abstract boolean a(View view, MotionEvent motionEvent, boolean z);

    public abstract boolean a(boolean z);

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getPointerCount() > 1) {
            boolean a2 = a(this.f16634a);
            this.f16634a = true;
            return a2;
        }
        boolean a3 = a(view, motionEvent, this.f16634a);
        if (this.f16634a) {
            if (motionEvent.getAction() == 1) {
                z = false;
            }
            this.f16634a = z;
        }
        return a3;
    }
}
